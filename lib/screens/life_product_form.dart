import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:simple_life/widgets/app_date_field.dart';
import 'package:intl/intl.dart';

import '../Bloc__state/general_bloc.dart';
import '../app_routes.dart';
import '../repositories/general_repository.dart';
import '../services/auth_storage.dart';

class LifeProductForm extends StatefulWidget {
  const LifeProductForm({this.productCode = '', super.key});

  final String productCode;

  @override
  State<LifeProductForm> createState() => _LifeProductFormState();
}

class _LifeProductFormState extends State<LifeProductForm> {
  static const _brandRed = Color(0xFFF43127);
  static const _textColor = Color(0xFF555966);
  static const _mutedColor = Color(0xFF7D8494);
  static const _fieldBorderColor = Color(0xFFE5E7EC);

  static const _categories = [
    {'value': '1', 'label': 'I have a periodic Life Insurance Premium to pay'},
    {'label': 'I have a total Life Insurance Benefit in mind', 'value': '0'},
  ];
  var availableFrequencies = [];
  var availableTerms = [];
  static const _frequencies = [
    {'value': 'monthly', 'label': 'Every Month'},
    {'value': 'quarterly', 'label': 'Every Quarter'},
    {'value': 'biannual', 'label': 'Twice a Year'},
    {'value': 'annual', 'label': 'Every Year'},
    {'value': 'single', 'label': 'Just Once'},
  ];

  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController(text: '0');
  final _yearsController = TextEditingController(text: '0');
  final _phoneController = TextEditingController();

  DateTime? _dateOfBirth;

  String? _category;
  String? _frequency;
  String? _term;
  bool _isLoadingQuote = false;
  Map<String, dynamic> message = {};

  bool _isToken = false;

  final List<dynamic> quoteEstimates = [];

  @override
  initState() {
    super.initState();
    message = context.read<GeneralBloc>().state.message;
    getProductConstraints();
    setToken();
  }

  setToken() async {
    _isToken = (await AuthStorageService().getToken())?['token'] == null;
  }

  @override
  void dispose() {
    _amountController.dispose();
    _yearsController.dispose();
    super.dispose();
  }

  void _changeNumber(TextEditingController controller, int change) {
    final currentValue = int.tryParse(controller.text) ?? 0;
    controller.text = (currentValue + change).clamp(0, 999999999).toString();
  }

  List<Map<String, dynamic>> _quoteEstimatesToMaps(List<dynamic> estimates) {
    return _QuoteSummary.estimateLinesFromQuotes(estimates).map((line) {
      return {
        'premium': line.premium,
        if (line.contribution != null) 'contribution': line.contribution,
        'frequency': line.frequency,
      };
    }).toList();
  }

  Map<String, dynamic> _buildPolicyQuoteFromEstimates(
    Map<String, dynamic> data,
    List<dynamic> estimates,
  ) {
    final lines = _QuoteSummary.estimateLinesFromQuotes(estimates);
    final first = estimates.isNotEmpty ? estimates.first : null;
    final quote = <String, dynamic>{
      ...data,
      'sumAssured':
          data['contribution'] ??
          data['premium'] ??
          SAVINGS_PRODUCTS_SUM_ASSURED,
      'estimates': _quoteEstimatesToMaps(estimates),
    };
    if (first is SaveSumAssuredQuote) {
      quote
        ..['contribution'] = first.contribution
        ..['premium'] = first.premium
        ..['frequency'] = first.frequency?.name ?? data['frequency'];
    } else if (first is LifePremium) {
      quote
        ..['premium'] = first.premium
        ..['frequency'] = first.frequency?.name ?? data['frequency'];
    }
    if (lines.length == 1) {
      quote['selectedFrequency'] = lines.first.frequency;
      quote['premium'] = lines.first.premium;
    }
    return quote;
  }

  Future<void> _continue() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;

    var data = {
      'contribution': int.tryParse(_amountController.text.trim()),
      'premium': int.tryParse(_amountController.text.trim()),
      'term': int.tryParse(_term.toString()),
      'dob': DateFormat('yyyy-MM-dd').format(
        _isToken
            ? (message['profile']?['customer']?['dateOfBirth'])
            : _dateOfBirth,
      ),
      'frequency': _frequency.toString(),
      'lifeProductOption': _category,
      // 'product': message['policy']['product'],
      'name': message['policy']['type'],
    };
    print(data);
    setState(() => _isLoadingQuote = true);
    try {
      final dynamic quoteValue;
      if (data['lifeProductOption'] == '1') {
        quoteValue = await getLifeQuoteEstimate(data);
      } else {
        quoteEstimates.clear();
        for (final freq in availableFrequencies) {
          data['frequency'] = freq['value'];
          final estimate = await getLifeQuotePremium(data);
          if (estimate != null) {
            if (estimate is LifePremium) {
              quoteEstimates.add({
                'frequency': estimate.frequency?.name ?? freq['value'],
                'premium': estimate.premium,
              });
            } else if (estimate is SaveSumAssuredQuote) {
              quoteEstimates.add({
                'frequency': estimate.frequency?.name ?? freq['value'],
                'premium': estimate.premium,
                if (estimate.contribution != null)
                  'contribution': estimate.contribution,
              });
            } else if (estimate is Map<String, dynamic>) {
              quoteEstimates.add({
                'frequency': estimate['frequency'] ?? freq['value'],
                'premium': estimate['premium'],
                if (estimate['contribution'] != null)
                  'contribution': estimate['contribution'],
              });
            }
          } else {
            quoteEstimates.add({
              'frequency': estimate.frequency?.name ?? freq['value'],
              'premium': 0,
            });
          }
        }
        if (quoteEstimates.isEmpty) {
          throw StateError('A quote could not be generated for this product.');
        }
        quoteValue = quoteEstimates;
      }
      if (!mounted) return;
      if (quoteValue == null ||
          (quoteValue is Iterable && (quoteValue as Iterable).isEmpty)) {
        throw StateError('A quote could not be generated for this product.');
      }
      if (quoteValue is GetSavePremiumQuote200Response) {
        message['policy']['quote'] = {
          ...data,
          'sumAssured': quoteValue.sumAssured ?? SAVINGS_PRODUCTS_SUM_ASSURED,
          'savings': quoteValue.savings,
        };
      } else if (quoteValue is LifeQuote) {
        message['policy']['quote'] = {
          ...data,
          'sumAssured': quoteValue.sumAssured,
        };
      } else if (quoteValue is Iterable && quoteValue.isNotEmpty) {
        message['policy']['quote'] = {
          ...data,
          'quotes': quoteValue.toList(),
          // _quoteEstimatesToMaps(quoteValue.toList()),
        };
        // print()
      }
      await saveMessage(context, message);
      if (!mounted) return;
      final shouldProceed = await _showQuoteSummary(quoteValue, data);
      if (!mounted || shouldProceed != true) return;
      await saveMessage(context, message);
      if (!mounted) return;
      await proceed();
    } catch (error) {
      if (!mounted) return;
      print(error);
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              error is StateError
                  ? error.message
                  : 'Unable to generate your quote. Please try again.',
            ),
          ),
        );
    } finally {
      if (mounted) setState(() => _isLoadingQuote = false);
    }
  }

  Future<bool?> _showQuoteSummary(
    dynamic quoteValue,
    Map<String, dynamic> data,
  ) {
    final _QuoteSummary? summary = quoteValue != null
        ? _QuoteSummary.fromResponse(quoteValue, data)
        : null;

    Map<String, dynamic>? quotesSumarry;
    final policyQuotes = message['policy']?['quote'] as Map<String, dynamic>;
    final policyQuote = message['policy']?['quote'];
    if (policyQuotes is Iterable) {
      quotesSumarry = Map<String, dynamic>.from(policyQuotes);
    }
    // } else if (policyQuote is Map) {
    //   quotesSumarry = Map<String, dynamic>.from(policyQuote);
    // }
    if (quoteValue is Iterable) {
      return showModalBottomSheet<bool>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        useSafeArea: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.black.withValues(alpha: 0.48),
        builder: (sheetContext) => _QuoteSummarySheet(
          quotesSumarry: message['policy']['quote'],
          onAdjust: () => Navigator.of(sheetContext).pop(false),
          onProceedWithSelection: (selection) {
            final stored = quotesSumarry;
            if (stored != null) {
              message['policy']['quote'] = {
                ...stored,
                'frequency': selection['frequency'],
                'premium': selection['premium'],
                if (selection['contribution'] != null)
                  'contribution': selection['contribution'],
                'selectedFrequency': selection['frequency'],
              };
            }
            Navigator.of(sheetContext).pop(true);
          },
        ),
      );
    } else {
      return showModalBottomSheet<bool>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        useSafeArea: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.black.withValues(alpha: 0.48),
        builder: (sheetContext) => _QuoteSummarySheet(
          summary: summary,
          onAdjust: () => Navigator.of(sheetContext).pop(false),
          onProceed: () => Navigator.of(sheetContext).pop(true),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _PageHeading(onBack: () => context.pop()),
                          const SizedBox(height: 17),
                          const _ProgressIndicator(),
                          const SizedBox(height: 32),
                          _FieldLabel('Choose your category'),
                          const SizedBox(height: 11),
                          _FormDropdown(
                            value: _category,
                            hint: 'Select one',
                            items: _categories,
                            onChanged: (value) =>
                                setState(() => _category = value),
                          ),
                          const SizedBox(height: 14),
                          _FieldLabel(
                            _category == '1'
                                ? 'How much can you pay?'
                                : "What's your target amount?",
                          ),
                          const SizedBox(height: 11),
                          _NumberField(
                            controller: _amountController,
                            semanticLabel: 'Amount to contribute',
                            onIncrement: () =>
                                _changeNumber(_amountController, 1),
                            onDecrement: () =>
                                _changeNumber(_amountController, -1),
                          ),
                          const SizedBox(height: 14),
                          if (_category == '1') ...[
                            _FieldLabel('How Frequent?'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _frequency,
                              hint: 'Select one',
                              items: availableFrequencies,
                              onChanged: (value) =>
                                  setState(() => _frequency = value),
                            ),
                            const SizedBox(height: 14),
                          ],
                          _FieldLabel('For how long?'),
                          const SizedBox(height: 11),
                          // _NumberField(
                          //   controller: _yearsController,
                          //   semanticLabel: 'Number of years',
                          //   onIncrement: () =>
                          //       _changeNumber(_yearsController, 1),
                          //   onDecrement: () =>
                          //       _changeNumber(_yearsController, -1),
                          // ),

                          _FormDropdown(
                            value: _term,
                            hint: 'Select one',
                            items: availableTerms.map((value) {
                              return {
                                'value': value,
                                'label':
                                    '$value ${value.toString() == '1' ? 'Year' : 'Years'}',
                              };
                            }).toList(),
                            onChanged: (value) => setState(() => _term = value),
                          ),
                          if (!_isToken) ...[
                            const SizedBox(height: 14),
                            _FieldLabel('Your Date of Birth? 18+'),
                            const SizedBox(height: 11),
                            AppDateField(
                              label: 'Date of birth',
                              value: _dateOfBirth,
                              initialDate: DateTime(DateTime.now().year - 30),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(
                                DateTime.now().year - 18,
                                DateTime.now().month,
                                DateTime.now().day,
                              ),
                              bottomPadding: 0,
                              onChanged: (date) {
                                setState(() => _dateOfBirth = date);
                              },
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Your Phone Number'),
                            const SizedBox(height: 11),
                            _NumberField(
                              controller: _phoneController,
                              semanticLabel: '080XXXXXXXX',
                              onIncrement: () => (),
                              onDecrement: () => (),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 12, 26, 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: _isLoadingQuote ? null : _continue,
                      style: FilledButton.styleFrom(
                        backgroundColor: _brandRed,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: _isLoadingQuote
                          ? const SizedBox.square(
                              dimension: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.4,
                                color: Colors.white,
                              ),
                            )
                          : const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Continue',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_rounded, size: 18),
                              ],
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getProductConstraints() {
    var productFrequency = message['policy']['availableFrequencies'];
    for (var freq in productFrequency) {
      for (var prdFrq in _frequencies) {
        if (freq == prdFrq['value']) {
          availableFrequencies.add(prdFrq);
        }
      }
    }

    availableTerms = message['policy']['terms'];
  }

  Future<void> proceed() async {
    if (_isToken) {
      createLifePolicyDocument(context);
    } else {
      message['identity'] = _phoneController.text;
      saveMessage(context, message);
      final response = await GeneralRepository().isPasswordLogin(
        _phoneController.text,
      );
      if (!mounted) return;
      if (response?.password == true) {
        context.push(AppRoutes.signInWithPassword);
        return;
      } else if (response?.exists == true && response?.password != true) {
        context.push(
          AppRoutes.signInWithOtp,
          extra: _phoneController.text.trim(),
        );
        return;
      } else {
        final acknowledged = await showPurchaseRequirements(context);
        if (!mounted || acknowledged != true) return;
        context.push(AppRoutes.signup);
      }
    }
  }


}
Future<bool?> showPurchaseRequirements(BuildContext context) {
  return showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.48),
    builder: (sheetContext) => _PurchaseRequirementsSheet(
      onAcknowledge: () => Navigator.of(sheetContext).pop(true),
    ),
  );
}

class _PurchaseRequirementsSheet extends StatelessWidget {
  const _PurchaseRequirementsSheet({required this.onAcknowledge});

  final VoidCallback onAcknowledge;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 1,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 620),
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              24,
              12,
              24,
              22 + MediaQuery.paddingOf(context).bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 44,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9DCE2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: 58,
                  height: 58,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFEAE8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.badge_outlined,
                    color: _LifeProductFormState._brandRed,
                    size: 29,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Before you continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _LifeProductFormState._textColor,
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'You need your National Identification Number and a proof '
                  'of address to complete the purchase.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _LifeProductFormState._mutedColor,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 26),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: onAcknowledge,
                    style: FilledButton.styleFrom(
                      backgroundColor: _LifeProductFormState._brandRed,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'I understand',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuoteEstimateLine {
  const _QuoteEstimateLine({
    required this.frequency,
    this.premium,
    this.contribution,
  });

  final String frequency;
  final num? premium;
  final num? contribution;
}

class _QuoteSummary {
  const _QuoteSummary({
    required this.sumAssured,
    required this.totalPayout,
    required this.duration,
    required this.premium,
    required this.frequency,
    required this.estimates,
  });

  final num? sumAssured;
  final num? totalPayout;
  final int? duration;
  final num? premium;
  final String frequency;
  final List<_QuoteEstimateLine> estimates;

  static List<_QuoteEstimateLine> estimateLinesFromQuotes(
    List<dynamic> quotes,
  ) {
    final lines = <_QuoteEstimateLine>[];
    print(lines);
    for (final quote in quotes) {
      if (quote is SaveSumAssuredQuote) {
        lines.add(
          _QuoteEstimateLine(
            frequency: quote.frequency?.name ?? '',
            premium: quote.premium,
            contribution: quote.contribution,
          ),
        );
      } else if (quote is LifePremium) {
        lines.add(
          _QuoteEstimateLine(
            frequency: quote.frequency?.name ?? '',
            premium: quote.premium,
          ),
        );
      } else if (quote is Map) {
        lines.add(
          _QuoteEstimateLine(
            frequency: quote['frequency']?.toString() ?? '',
            premium: _toNumber(quote['premium']),
            contribution: _toNumber(quote['contribution']),
          ),
        );
      }
    }
    return lines;
  }

  static List<_QuoteEstimateLine> estimateLinesFromStored(
    Map<String, dynamic> stored,
  ) {
    final quotes = stored['quotes'];
    if (quotes is List && quotes.isNotEmpty) {
      print('Hj ${quotes}');
      return estimateLinesFromQuotes(quotes);
    }
    return const [];
  }

  static num? targetAmountFromStored(Map<String, dynamic> stored) =>
      _toNumber(stored['contribution'] ?? stored['premium']);

  factory _QuoteSummary.fromResponse(
    dynamic response,
    Map<String, dynamic> request,
  ) {
    num? sumAssured;
    num? totalPayout;
    num? premium = request['premium'] as num?;
    var estimates = <_QuoteEstimateLine>[];
    print(request);
    print('response642');

    if (response is GetSavePremiumQuote200Response) {
      sumAssured = response.sumAssured;
      totalPayout = response.savings;
    } else if (response is LifeQuote) {
      sumAssured = response.sumAssured;
    } else if (response is SaveSumAssuredQuote) {
      sumAssured = request['contribution'] as num?;
      totalPayout = response.contribution;
      premium = response.premium;
      estimates = estimateLinesFromQuotes([response]);
    } else if (response is LifePremium) {
      sumAssured = request['contribution'] as num?;
      premium = response.premium;
      estimates = estimateLinesFromQuotes([response]);
    } else if (response is Iterable && response.isNotEmpty) {
      estimates = estimateLinesFromQuotes(response.toList());
      final first = response.first;
      if (first is SaveSumAssuredQuote) {
        sumAssured = request['contribution'] as num?;
        totalPayout = request['premium'];
        // premium = first.premium;
      } else if (first is LifePremium) {
        sumAssured = request['contribution'] as num?;
        // premium = first.premium;
        totalPayout = request['premium'];
      }
    } else if (response is Map) {
      sumAssured = _toNumber(response['sumAssured']);
      totalPayout = _toNumber(response['totalPayout'] ?? response['savings']);
      premium = _toNumber(response['premium']) ?? premium;
    }

    String frequency = request['frequency']?.toString() ?? '';
    if (estimates.length == 1 && estimates.first.frequency.isNotEmpty) {
      frequency = estimates.first.frequency;
    } else if (response is SaveSumAssuredQuote && response.frequency != null) {
      frequency = response.frequency!.name;
    } else if (response is LifePremium && response.frequency != null) {
      frequency = response.frequency!.name;
    }
    // if(response is Iterable && response.isNotEmpty){
    //
    // }
    return _QuoteSummary(
      sumAssured: sumAssured,
      totalPayout: totalPayout,
      duration: request['term'] as int?,
      premium: premium,
      frequency: frequency,
      estimates: estimates,
    );
  }

  factory _QuoteSummary.fromStoredPolicyQuote(Map<String, dynamic> stored) {
    final quotes = stored['quotes'];
    if (quotes is List && quotes.isNotEmpty) {
      return _QuoteSummary.fromResponse(quotes, stored);
    }
    return _QuoteSummary.fromResponse(stored, stored);
  }

  static num? _toNumber(dynamic value) =>
      value is num ? value : num.tryParse(value?.toString() ?? '');
}

class _QuoteSummarySheet extends StatefulWidget {
  const _QuoteSummarySheet({
    this.summary,
    this.quotesSumarry,
    required this.onAdjust,
    this.onProceed,
    this.onProceedWithSelection,
  }) : assert(
         (summary != null && onProceed != null) ||
             (quotesSumarry != null && onProceedWithSelection != null),
         'Provide summary with onProceed, or quotesSumarry with onProceedWithSelection',
       );

  final _QuoteSummary? summary;
  final Map<String, dynamic>? quotesSumarry;
  final VoidCallback onAdjust;
  final VoidCallback? onProceed;
  final void Function(Map<String, dynamic> selection)? onProceedWithSelection;

  @override
  State<_QuoteSummarySheet> createState() => _QuoteSummarySheetState();
}

class _QuoteSummarySheetState extends State<_QuoteSummarySheet> {
  int? _selectedEstimateIndex;

  bool get _isSelectableQuoteMode =>
      widget.summary == null && widget.quotesSumarry != null;

  @override
  Widget build(BuildContext context) {
    if (_isSelectableQuoteMode) {
      return _buildSelectableQuoteSheet(context);
    }

    final display = widget.summary;
    if (display == null) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        padding: EdgeInsets.fromLTRB(
          24,
          24,
          24,
          20 + MediaQuery.paddingOf(context).bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Quote details are unavailable.',
              textAlign: TextAlign.center,
              style: TextStyle(color: _LifeProductFormState._mutedColor),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: widget.onAdjust,
                    child: const Text('Adjust'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: widget.onProceed,
                    child: const Text('Proceed'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          24,
          10,
          24,
          20 + MediaQuery.paddingOf(context).bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9DCE2),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                color: Color(0xFFFFEAE8),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_rounded,
                color: _LifeProductFormState._brandRed,
                size: 29,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Your quote is ready',
              style: TextStyle(
                color: _LifeProductFormState._textColor,
                fontSize: 21,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Review your plan details before you proceed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _LifeProductFormState._mutedColor,
                fontSize: 13,
                height: 1.4,
              ),
            ),
            if (display.totalPayout != null) ...[
              const SizedBox(height: 23),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF4F3),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFFFFDFDC)),
                ),
                child: Column(
                  children: [
                    const Text(
                      'TOTAL PAYOUT',
                      style: TextStyle(
                        color: _LifeProductFormState._mutedColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      _formatCurrency(display.totalPayout),
                      style: const TextStyle(
                        color: _LifeProductFormState._brandRed,
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
            ] else
              const SizedBox(height: 23),
            if (display.sumAssured != null)
              _QuoteMetric(
                label: 'Total Sum Assured',
                value: _formatCurrency(display.sumAssured),
                icon: Icons.shield_outlined,
              ),
            if (display.sumAssured != null) const SizedBox(height: 12),
            _QuoteMetric(
              label: 'Duration',
              value: display.duration == null
                  ? '--'
                  : '${display.duration} ${display.duration == 1 ? 'year' : 'years'}',
              icon: Icons.calendar_month_outlined,
            ),
            if (display.estimates.length > 1) ...[
              const SizedBox(height: 18),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Premium by frequency',
                  style: TextStyle(
                    color: _LifeProductFormState._textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ...display.estimates.map(
                (line) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F9FB),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EC)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _frequencyLabel(line.frequency),
                            style: const TextStyle(
                              color: _LifeProductFormState._textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          _formatCurrency(line.premium ?? line.contribution),
                          style: const TextStyle(
                            color: _LifeProductFormState._brandRed,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ] else ...[
              const SizedBox(height: 12),
              _QuoteMetric(
                label: 'Premium',
                value: _formatCurrency(display.premium),
                icon: Icons.account_balance_wallet_outlined,
              ),
              const SizedBox(height: 12),
              _QuoteMetric(
                label: 'Frequency',
                value: display.frequency == ''
                    ? '--'
                    : _frequencyLabel(display.frequency),
                icon: Icons.event_repeat_outlined,
              ),
            ],
            const SizedBox(height: 26),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: widget.onAdjust,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: _LifeProductFormState._brandRed,
                        side: const BorderSide(
                          color: _LifeProductFormState._brandRed,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Adjust',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: FilledButton(
                      onPressed: widget.onProceed,
                      style: FilledButton.styleFrom(
                        backgroundColor: _LifeProductFormState._brandRed,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Proceed',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectableQuoteSheet(BuildContext context) {
    final stored = widget.quotesSumarry!;
    print('jdd ${widget.quotesSumarry}');
    final targetAmount = _QuoteSummary.targetAmountFromStored(stored);
    final duration = _toInt(stored['term']);
    final estimates = _QuoteSummary.estimateLinesFromStored(stored);
    final quotesList = stored['quotes'];
    final canProceed = _selectedEstimateIndex != null;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          24,
          10,
          24,
          20 + MediaQuery.paddingOf(context).bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9DCE2),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            // const SizedBox(height: 24),
            // Container(
            //   width: 54,
            //   height: 54,
            //   decoration: const BoxDecoration(
            //     color: Color(0xFFFFEAE8),
            //     shape: BoxShape.circle,
            //   ),
            //   child: const Icon(
            //     Icons.check_rounded,
            //     color: _LifeProductFormState._brandRed,
            //     size: 29,
            //   ),
            // ),
            // const SizedBox(height: 15),
            // const Text(
            //   'Your quote is ready',
            //   style: TextStyle(
            //     color: _LifeProductFormState._textColor,
            //     fontSize: 21,
            //     fontWeight: FontWeight.w700,
            //     letterSpacing: -0.3,
            //   ),
            // ),
            // const SizedBox(height: 7),
            // const Text(
            //   'Choose how often you want to pay, then proceed.',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: _LifeProductFormState._mutedColor,
            //     fontSize: 13,
            //     height: 1.4,
            //   ),
            // ),
            if (targetAmount != null) ...[
              const SizedBox(height: 23),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF4F3),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFFFFDFDC)),
                ),
                child: Column(
                  children: [
                    const Text(
                      'YOUR TARGET AMOUNT',
                      style: TextStyle(
                        color: _LifeProductFormState._mutedColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      _formatCurrency(targetAmount),
                      style: const TextStyle(
                        color: _LifeProductFormState._brandRed,
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ] else
              const SizedBox(height: 23),
            if (duration != null) ...[
              const SizedBox(height: 12),
              _QuoteMetric(
                label: 'Duration',
                value: '$duration ${duration == 1 ? 'year' : 'years'}',
                icon: Icons.calendar_month_outlined,
              ),
            ],
            if (estimates.isNotEmpty) ...[
              const SizedBox(height: 18),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select payment frequency',
                  style: TextStyle(
                    color: _LifeProductFormState._textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ...List.generate(estimates.length, (index) {
                print({estimates[index].premium});
                print("estimates[index]");

                final line = estimates[index];
                final selected = _selectedEstimateIndex == index;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () =>
                          setState(() => _selectedEstimateIndex = index),
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: selected
                              ? const Color(0xFFFFF4F3)
                              : const Color(0xFFF8F9FB),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: selected
                                ? _LifeProductFormState._brandRed
                                : const Color(0xFFE5E7EC),
                            width: selected ? 1.5 : 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              selected
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: selected
                                  ? _LifeProductFormState._brandRed
                                  : _LifeProductFormState._mutedColor,
                              size: 22,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                _frequencyLabel(line.frequency),
                                style: const TextStyle(
                                  color: _LifeProductFormState._textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              _formatCurrency(
                                (line.contribution != null &&
                                        line.contribution != 0)
                                    ? line.contribution
                                    : line.premium,
                              ),
                              style: const TextStyle(
                                color: _LifeProductFormState._brandRed,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ] else
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'No payment options are available.',
                  style: TextStyle(color: _LifeProductFormState._mutedColor),
                ),
              ),
            const SizedBox(height: 26),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: widget.onAdjust,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: _LifeProductFormState._brandRed,
                        side: const BorderSide(
                          color: _LifeProductFormState._brandRed,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Adjust',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: FilledButton(
                      onPressed: canProceed
                          ? () {
                              if (quotesList is! List ||
                                  _selectedEstimateIndex == null) {
                                return;
                              }
                              final item = quotesList[_selectedEstimateIndex!];
                              final selection = item is Map
                                  ? Map<String, dynamic>.from(item)
                                  : <String, dynamic>{
                                      'frequency':
                                          estimates[_selectedEstimateIndex!]
                                              .frequency,
                                      'premium':
                                          estimates[_selectedEstimateIndex!]
                                              .premium,
                                      if (estimates[_selectedEstimateIndex!]
                                              .contribution !=
                                          null)
                                        'contribution':
                                            estimates[_selectedEstimateIndex!]
                                                .contribution,
                                    };
                              widget.onProceedWithSelection!(selection);
                            }
                          : null,
                      style: FilledButton.styleFrom(
                        backgroundColor: _LifeProductFormState._brandRed,
                        foregroundColor: Colors.white,
                        disabledBackgroundColor: const Color(0xFFE5E7EC),
                        disabledForegroundColor: const Color(0xFF9AA1AD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Proceed',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static int? _toInt(dynamic value) {
    if (value is int) return value;
    return int.tryParse(value?.toString() ?? '');
  }
}

class _QuoteMetric extends StatelessWidget {
  const _QuoteMetric({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 93),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEBEDF1)),
      ),
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Color(0xFFFFEAE8),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: _LifeProductFormState._brandRed, size: 18),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _LifeProductFormState._mutedColor,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: _LifeProductFormState._textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _frequencyLabel(String? value) {
  if (value == null || value.isEmpty) return '--';
  for (final freq in _LifeProductFormState._frequencies) {
    if (freq['value'] == value) {
      return freq['label'] as String;
    }
  }
  return value;
}

String _formatCurrency(num? value) {
  if (value == null) return '--';
  final raw = value % 1 == 0
      ? value.toStringAsFixed(0)
      : value.toStringAsFixed(2);
  final parts = raw.split('.');
  final whole = parts.first.replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (_) => ',',
  );
  return '₦$whole${parts.length > 1 ? '.${parts.last}' : ''}';
}

class _PageHeading extends StatelessWidget {
  const _PageHeading({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, -5),
          child: IconButton(
            onPressed: onBack,
            visualDensity: VisualDensity.compact,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: _LifeProductFormState._textColor,
              size: 25,
            ),
          ),
        ),
        const SizedBox(width: 1),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let’s get you Started',
                style: TextStyle(
                  color: _LifeProductFormState._textColor,
                  fontSize: 20,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'This will only take few minutes',
                style: TextStyle(
                  color: _LifeProductFormState._mutedColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              color: _LifeProductFormState._brandRed,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(width: 7),
        Expanded(
          child: Container(
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFFBE8E8),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: _LifeProductFormState._mutedColor,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _FormDropdown extends StatelessWidget {
  const _FormDropdown({
    required this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
  });

  final String? value;
  final String hint;

  // final List<Map<String, String>> items;
  final List<dynamic> items;

  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      isExpanded: true,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: _LifeProductFormState._mutedColor,
      ),
      hint: Text(hint),
      decoration: _inputDecoration(),
      style: const TextStyle(
        color: _LifeProductFormState._textColor,
        fontSize: 12,
      ),
      dropdownColor: Colors.white,
      borderRadius: BorderRadius.circular(10),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item['value'],
              child: Text(item['label']!, overflow: TextOverflow.ellipsis),
            ),
          )
          .toList(),
      onChanged: onChanged,
      validator: (value) => value == null ? 'Please select an option' : null,
    );
  }
}

class _NumberField extends StatelessWidget {
  const _NumberField({
    required this.controller,
    required this.semanticLabel,
    required this.onIncrement,
    required this.onDecrement,
  });

  final TextEditingController controller;
  final String semanticLabel;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: _LifeProductFormState._mutedColor,
        fontSize: 12,
      ),
      decoration: _inputDecoration(
        suffixIcon: Semantics(
          label: '$semanticLabel controls',
          child: SizedBox(
            width: 38,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _StepperButton(
                  icon: Icons.keyboard_arrow_up_rounded,
                  onPressed: onIncrement,
                ),
                _StepperButton(
                  icon: Icons.keyboard_arrow_down_rounded,
                  onPressed: onDecrement,
                ),
              ],
            ),
          ),
        ),
      ),
      validator: (value) {
        final number = int.tryParse(value ?? '');
        return number == null || number <= 0
            ? 'Enter a value greater than zero'
            : null;
      },
    );
  }
}

class _StepperButton extends StatelessWidget {
  const _StepperButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 15,
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        visualDensity: VisualDensity.compact,
        onPressed: onPressed,
        icon: Icon(icon, size: 15, color: _LifeProductFormState._mutedColor),
      ),
    );
  }
}

InputDecoration _inputDecoration({Widget? suffixIcon}) {
  const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _LifeProductFormState._fieldBorderColor),
  );

  return InputDecoration(
    hintStyle: const TextStyle(
      color: _LifeProductFormState._mutedColor,
      fontSize: 12,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
    constraints: const BoxConstraints(minHeight: 39),
    border: border,
    enabledBorder: border,
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _LifeProductFormState._brandRed),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _LifeProductFormState._brandRed),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _LifeProductFormState._brandRed),
    ),
    suffixIcon: suffixIcon,
  );
}
