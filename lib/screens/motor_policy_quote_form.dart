import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/utils/utils.dart';

import '../Bloc__state/general_bloc.dart';
import '../app_routes.dart';
import '../repositories/general_repository.dart';
import '../services/auth_storage.dart';
import 'life_product_form.dart';

class MotorPolicyQuote extends StatefulWidget {
  const MotorPolicyQuote({super.key});

  @override
  State<MotorPolicyQuote> createState() => _MotorPolicyQuoteState();
}

class _MotorPolicyQuoteState extends State<MotorPolicyQuote> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _fieldBorderColor = AppColors.textColor;

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
  final _amountController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isLoadingQuote = false;

  Map<String, dynamic> _product = const {};

  String? _use;

  String? _type;

  Map<String, dynamic> message = {};

  bool _isToken = false;

  @override
  void initState() {
    super.initState();

    // getProductConstraints();
    //   checkAge
    getProductDetails();
    message = context.read<GeneralBloc>().state.message;
    setToken();
  }

  setToken() async {
    _isToken = (await AuthStorageService().getToken())?['token'] == null;
  }
  @override
  void dispose() {
    _amountController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _changeNumber(TextEditingController controller, int change) {
    final currentValue = int.tryParse(controller.text) ?? 0;
    controller.text = (currentValue + change).clamp(0, 999999999).toString();
  }

  Future<void> _continue() async {
    try {
      final message = context.read<GeneralBloc>().state.message;
      FocusManager.instance.primaryFocus?.unfocus();

      if (!(_formKey.currentState?.validate() ?? false)) return;
      message['identity'] = _phoneController.text.trim();
      final data = <String, dynamic>{
        'motorClass': _use,
        'motorType': _type,
        'motorValue': _amountController.text.trim(),
        'name': message['policy']['type'],
      };
      setState(() => _isLoadingQuote = true);
      final quoteValue = await getMotorQuote(data);
      if (!mounted) return;
      if (quoteValue == null) {
        throw StateError('A motor quote could not be generated.');
      }

      final summary = _MotorQuoteSummary.fromResponse(quoteValue, data);
      message['policy']['quote'] = {...data, 'premium': summary.premium};
      await saveMessage(context, message);

      if (!mounted) return;
     var result = await _showMotorQuote(summary);
      if(result == true){
          _proceed();
      }
    } catch (error) {
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

  Future<bool?> _showMotorQuote(_MotorQuoteSummary summary) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.48),
      builder: (sheetContext) => _MotorQuoteSheet(
        summary: summary,
        onBuyNow: () => Navigator.of(sheetContext).pop(true),
        onAdjust: () => Navigator.of(sheetContext).pop(false),
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
                          // const _ProgressIndicator(),

                          if ([
                            MotorPolicy['HEIRSCOMPREHENSIVE']!['name'],
                            MotorPolicy['HERMOTOR']!['name'],
                          ].contains(_product['name'])) ...[
                            _FieldLabel('Car Value in Naira'),
                            const SizedBox(height: 11),
                            _NumberField(
                              controller: _amountController,
                              semanticLabel: 'Car Value in Naira',
                              onIncrement: () => (),
                              onDecrement: () => (),
                              validators: {
                                'isMin': true,
                                'min':
                                MotorPolicy['HEIRSCOMPREHENSIVE']!['name'] ==
                                    _product['name'] ? 2e6 : 4e6,
                              }
                            ),
                            const SizedBox(height: 14),
                          ],
                          _FieldLabel('Vehicle Usage?'),
                          const SizedBox(height: 11),
                          _FormDropdown(
                            value: _use,
                            hint: 'Select one',
                            items:
                                ([
                                          MotorPolicy['HEIRS70k']!['name'],
                                          MotorPolicy['HEIRS35k']!['name'],
                                          MotorPolicy['HEIRS25k']!['name'],
                                        ].contains(_product['name'])
                                        ? ['Private']
                                        : ['Private', 'Commercial'])
                                    .map(
                                      (element) => {
                                        'value': element,
                                        'label': element,
                                      },
                                    )
                                    .toList(),

                            onChanged: (value) => setState(() {
                              _use = value;
                              _type = null;
                            }),
                          ),
                          const SizedBox(height: 14),

                          _FieldLabel('Vehicle Type?'),
                          const SizedBox(height: 11),
                          _FormDropdown(
                            value: _type,
                            hint: 'Select one',
                            items:
                                (_use == 'Private'
                                        ? ['Saloon', 'SUV']
                                        : [
                                            'Saloon',
                                            'SUV',
                                            'Light Truck',
                                            'Heavy Duty Truck',
                                          ])
                                    .map(
                                      (element) => {
                                        'value': element,
                                        'label': element,
                                      },
                                    )
                                    .toList(),
                            onChanged: (value) => setState(() => _type = value),
                          ),
                          const SizedBox(height: 14),
                          _FieldLabel('Your Phone Number?'),
                          const SizedBox(height: 11),
                          _NumberField(
                            controller: _phoneController,
                            semanticLabel: 'Car Value in Naira',
                            onIncrement: () => (),
                            onDecrement: () => (),
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

  void getProductDetails() {
    var message = context.read<GeneralBloc>().state.message;
    final product = message['policy']['class'];
    setState(() {
      _product = product is Map
          ? Map<String, dynamic>.from(product)
          : <String, dynamic>{};
    });
  }

  Future<void> _proceed() async {
    message['identity'] = _phoneController.text.trim();
    await saveMessage(context, message);


    final response = await GeneralRepository().isPasswordLogin(
      _phoneController.text.trim(),
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

class _MotorQuoteSummary {
  const _MotorQuoteSummary({
    required this.title,
    required this.premium,
    required this.description,
  });

  final String title;
  final num? premium;
  final String description;

  factory _MotorQuoteSummary.fromResponse(
    dynamic response,
    Map<String, dynamic> request,
  ) {
    final productName = request['name']?.toString() ?? 'Motor Insurance';
    final isFlexi = [
      MotorPolicy['HEIRS70k']?['name'],
      MotorPolicy['HEIRS35k']?['name'],
      MotorPolicy['HEIRS25k']?['name'],
    ].contains(productName);

    num? premium;
    if (response is MotorPremium) {
      premium = response.premium;
    } else if (response is GetBusinessProtectQuote200Response) {
      premium = response.premium;
    } else if (response is Map) {
      premium = _toNumber(response['premium']);
    } else {
      try {
        premium = (response as dynamic).premium as num?;
      } catch (_) {}
    }
    final product = MotorPolicy.values.firstWhere(
      (item) => item?['name'] == productName,
      orElse: () => <String, dynamic>{},
    );

    return _MotorQuoteSummary(
      title: isFlexi ? 'Flexi Motor Insurance' : productName,
      premium: premium,
      description: isFlexi
          ? 'Cover up to ₦1M for damage, theft, or fire, plus ₦3M '
                'third-party property cover and injury/death compensation. '
                'Includes flood cover, riot/strike protection, no excess, '
                'towing support, and ECOWAS cross-border cover.'
          : product?['description'] ??
                'Reliable motor protection designed around your vehicle.',
    );
  }

  static num? _toNumber(dynamic value) =>
      value is num ? value : num.tryParse(value?.toString() ?? '');
}

class _MotorQuoteSheet extends StatelessWidget {
  const _MotorQuoteSheet({
    required this.summary,
    required this.onBuyNow,
    required this.onAdjust,
  });

  final _MotorQuoteSummary summary;
  final VoidCallback onBuyNow;
  final VoidCallback onAdjust;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 1,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 393),
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          clipBehavior: Clip.antiAlias,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
              22,
              12,
              22,
              24 + MediaQuery.paddingOf(context).bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 42,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA4A8B1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  summary.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: _MotorPolicyQuoteState._textColor,
                    fontSize: 21,
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.25,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '${_formatCurrency(summary.premium)}/year.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: _MotorPolicyQuoteState._brandRed,
                    fontSize: 32,
                    height: 1.1,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.8,
                  ),
                ),
                const SizedBox(height: 31),
                Image.asset(
                  'assets/images/car_insurance.png',
                  width: 280,
                  height: 112,
                  fit: BoxFit.contain,
                  semanticLabel: 'Red insured car',
                ),
                const SizedBox(height: 34),
                Text(
                  summary.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: _MotorPolicyQuoteState._mutedColor,
                    fontSize: 11,
                    height: 1.6,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 31),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: onAdjust,
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: _MotorPolicyQuoteState._brandRed,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Text(
                            'Adjust',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: FilledButton(
                          onPressed: onBuyNow,
                          style: FilledButton.styleFrom(
                            backgroundColor: _MotorPolicyQuoteState._brandRed,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
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
              color: _MotorPolicyQuoteState._textColor,
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
                'Enter Vehicle Details',
                style: TextStyle(
                  color: _MotorPolicyQuoteState._textColor,
                  fontSize: 20,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.2,
                ),
              ),
            ],
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
        color: _MotorPolicyQuoteState._mutedColor,
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
        color: _MotorPolicyQuoteState._mutedColor,
      ),
      hint: Text(hint),
      decoration: _inputDecoration(),
      style: const TextStyle(
        color: _MotorPolicyQuoteState._textColor,
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
  _NumberField({
    required this.controller,
    required this.semanticLabel,
    VoidCallback? onIncrement,
    VoidCallback? onDecrement,
    this.validators,
  });

  final TextEditingController controller;
  final String semanticLabel;
  VoidCallback? onIncrement;
  VoidCallback? onDecrement;
  final Map<String, dynamic>? validators;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: _MotorPolicyQuoteState._mutedColor,
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
                  onPressed: () => onIncrement,
                ),
                _StepperButton(
                  icon: Icons.keyboard_arrow_down_rounded,
                  onPressed: () => onDecrement,
                ),
              ],
            ),
          ),
        ),
      ),
      validator: (value) {
        final number = int.tryParse(value ?? '') ?? 0;

        print(validators?['isMax'] );
        print(value);

        if (validators?['isMax'] == true && number > validators?['max']) {
          return "Value cannot be greater than ${validators?['max']}";
        };
        if (validators?['isMin'] == true && number < validators?['min']) {
          return "Value cannot be less than ${validators?['min']}";
        };
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
        icon: Icon(icon, size: 15, color: _MotorPolicyQuoteState._mutedColor),
      ),
    );
  }
}

InputDecoration _inputDecoration({Widget? suffixIcon}) {
  const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _MotorPolicyQuoteState._fieldBorderColor),
  );

  return InputDecoration(
    hintStyle: const TextStyle(
      color: _MotorPolicyQuoteState._mutedColor,
      fontSize: 12,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
    constraints: const BoxConstraints(minHeight: 39),
    border: border,
    enabledBorder: border,
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _MotorPolicyQuoteState._brandRed),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _MotorPolicyQuoteState._brandRed),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _MotorPolicyQuoteState._brandRed),
    ),
    suffixIcon: suffixIcon,
  );
}
