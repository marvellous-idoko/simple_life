import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/utils/utils.dart';

import '../Bloc__state/general_bloc.dart';

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

  String? _category;
  String? _frequency;
  String? _term;
  bool _isLoadingQuote = false;

  @override
  void initState() {
    super.initState();
    getProductConstraints();
    //   checkAge
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

  Future<void> _continue() async {
    var message = context.read<GeneralBloc>().state.message;
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    print(message['profile']);

   
    var data = {
      'contribution': int.tryParse(_amountController.text.trim()),
      'premium': int.tryParse(_amountController.text.trim()),
      'term': int.tryParse(_term.toString()),
      'dob': message['profile']['customer']['dateOfBirth'],
      'frequency': _frequency.toString(),
      'lifeProductOption': _category,
      // 'product': message['policy']['product'],
      'name': message['policy']['type'],
    };

    setState(() => _isLoadingQuote = true);
    try {
      final dynamic quoteValue;
      if (data['lifeProductOption'] == '1') {
        quoteValue = await getLifeQuoteEstimate(data);
      } else {
        quoteValue = await getLifeQuotePremium(data);
      }

      if (!mounted) return;
      if (quoteValue == null) {
        throw StateError('A quote could not be generated for this product.');
      }

      // final shouldProceed = await
      message['policy']['quote'] = {...data, 'sumAssured':quoteValue?.sumAssured ?? SAVINGS_PRODUCTS_SUM_ASSURED, 'savings':quoteValue?.savings};
      // print('message 18');
      // print(message);
      // print('message 18');
    //    var encoder = const JsonEncoder.withIndent('  ');
    // String prettyString = encoder.convert(message);

    // print("message");
    // print(prettyString);
    await saveMessage(context, message);
       _showQuoteSummary(quoteValue, data);
      // if (!mounted || shouldProceed != true) return;

      
      // createLifePolicyDocument(context);
    } catch (error) {
      print(error);
      if (!mounted) return;
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
    final summary = _QuoteSummary.fromResponse(quoteValue, data);
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.48),
      builder: (sheetContext) => _QuoteSummarySheet(
        summary: summary,
        onAdjust: () => Navigator.of(sheetContext).pop(false),
        onProceed: () => createLifePolicyDocument(context),
      ),
    );
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
                          _FieldLabel('Amount to Contribute'),
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
                              return {'value': value, 'label': '$value years'};
                            }).toList(),
                            onChanged: (value) => setState(() => _term = value),
                          ),
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
    var message = context.read<GeneralBloc>().state.message;
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
}

class _QuoteSummary {
  const _QuoteSummary({
    required this.sumAssured,
    required this.totalPayout,
    required this.duration,
    required this.premium,
    required this.frequency,

  });

  final num? sumAssured;
  final num? totalPayout;
  final int? duration;
  final num? premium;
  final String frequency;

  factory _QuoteSummary.fromResponse(
    dynamic response,
    Map<String, dynamic> request,
  ) {
    num? sumAssured;
    num? totalPayout;
    num? premium = request['premium'] as num?;

    if (response is GetSavePremiumQuote200Response) {

      sumAssured = response.sumAssured;
      totalPayout = response.savings;

    } else if (response is Iterable && response.isNotEmpty) {
      final first = response.first;
      if (first is GetSaveSumAssuredQuote200ResponseInner) {
        sumAssured = request['contribution'] as num?;
        totalPayout = first.contribution;
        premium = first.premium;
      }
    } else if (response is Map) {
      sumAssured = _toNumber(response['sumAssured']);
      totalPayout = _toNumber(response['totalPayout'] ?? response['savings']);
      premium = _toNumber(response['premium']) ?? premium;
    }

    return _QuoteSummary(
      sumAssured: sumAssured,
      totalPayout: totalPayout,
      duration: request['term'] as int?,
      premium: premium,
      frequency: request['frequency'],
    );
  }

  static num? _toNumber(dynamic value) =>
      value is num ? value : num.tryParse(value?.toString() ?? '');
}

class _QuoteSummarySheet extends StatelessWidget {
  const _QuoteSummarySheet({
    required this.summary,
    required this.onAdjust,
    required this.onProceed,
  });

  final _QuoteSummary summary;
  final VoidCallback onAdjust;
  final VoidCallback onProceed;

  @override
  Widget build(BuildContext context) {

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
            const SizedBox(height: 23),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
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
                    _formatCurrency(summary.totalPayout),
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
            Row(
              children: [

                if(summary.sumAssured != null)...[
                  
                

                
                Expanded(
                  child: _QuoteMetric(
                    label: 'Total Sum Assured',
                    value: _formatCurrency(summary.sumAssured),
                    icon: Icons.shield_outlined,
                  ),
                ),
                const SizedBox(width: 12),

                ],
                Expanded(
                  child: _QuoteMetric(
                    label: 'Premium',
                    value: _formatCurrency(summary.premium),
                    icon: Icons.account_balance_wallet_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _QuoteMetric(
              label: 'Duration',
              value: summary.duration == null
                  ? '--'
                  : '${summary.duration} ${summary.duration == 1 ? 'year' : 'years'}',
              icon: Icons.calendar_month_outlined,
            ),
            const SizedBox(height: 12),
            _QuoteMetric(
              label: 'Frequency',
              value: summary.frequency == ''
                  ? '--'
                  : summary.frequency,
              icon: Icons.calendar_month_outlined,
            ),
            const SizedBox(height: 26),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: onAdjust,
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
                      onPressed: onProceed,
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
