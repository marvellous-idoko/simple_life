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

class HomeOwnerPolicyQuote extends StatefulWidget {
  const HomeOwnerPolicyQuote({super.key});

  @override
  State<HomeOwnerPolicyQuote> createState() => _HomeOwnerPolicyQuoteState();
}

class _HomeOwnerPolicyQuoteState extends State<HomeOwnerPolicyQuote> {
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
  final _buildValueController = TextEditingController();
  final _valueController = TextEditingController();
  final _phoneController = TextEditingController();
  final _stationaryItemsValueController = TextEditingController();
  final _mobileItemsValueController = TextEditingController();
  final _otherCategoryController = TextEditingController();

  bool _isLoadingQuote = false;

  Map<String, dynamic> _product = const {};

  String? _use;

  String? _type;
  Map<String, dynamic> message = {};

  String? _category;

  @override
  void initState() {
    super.initState();
    message = context.read<GeneralBloc>().state.message;

    // getProductConstraints();
    //   checkAge
    getProductDetails();
  }

  @override
  void dispose() {
    _buildValueController.dispose();
    _phoneController.dispose();
    _stationaryItemsValueController.dispose();
    _mobileItemsValueController.dispose();
    _otherCategoryController.dispose();
    super.dispose();
  }

  void _changeNumber(TextEditingController controller, int change) {
    final currentValue = int.tryParse(controller.text) ?? 0;
    controller.text = (currentValue + change).clamp(0, 999999999).toString();
  }

  Future<void> _continue() async {
    try {
      FocusManager.instance.primaryFocus?.unfocus();
      if (!(_formKey.currentState?.validate() ?? false)) return;

      final data = <String, dynamic>{
        'stationaryValue': _stationaryItemsValueController.text.trim(),
        'mobileValue': _mobileItemsValueController.text.trim(),
        'buildingValue': _buildValueController.text.trim(),
        // 'value': _stationaryItemsValueController.text.trim(),
        'name': message['policy']['type'],
      };
      
      setState(() => _isLoadingQuote = true);
      var quoteValue;
      if (HomeOwnerPolicies.contains(message['policy']['type']))
        quoteValue = await getHomeOwnerQuote(data);
      else if (BusinessProtectPolicies.contains(message['policy']['type']))
        quoteValue = await getSmeProtectQuote(data);
      else if (TenantProtectPolicies.contains(message['policy']['type']))
        quoteValue = await getTenantProtectQuote(data);
      else if (PersonalAccidentPolicies.contains(message['policy']['type']))
        quoteValue = await getPersonalAccidentQuote(data);
      else if (FireTheftPolicies.contains(message['policy']['type'])) {
        await sendBuyActionToCustomerExperience(
          company: resolveInsuranceCompany(message),
          phoneNumber: _phoneController.text.trim(),
          policyInfo: data['name']?.toString() ?? message['policy']['type']?.toString(),
          inquiryType: "Kindly contact the prospect Customer name: N/A, Email: N/A with Phone number ${_phoneController.text.trim()} who has shown interest in purchasing the  Fire & Special Perils Insurance plan",
        );
        if (!mounted) return;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            const SnackBar(
              content: Text(
                'Thanks! Our team will contact you shortly about your quote.',
              ),
            ),
          );
        context.pop();
        return;
      }
      // else if (PersonalAccidentPolicies.contains(message['policy']['type']))
      //   quoteValue = await getPersonalAccidentQuote(data);
      if (!mounted) return;
      if (quoteValue == null) {
        throw StateError('quote could not be generated.');
      }
      final summary = _HomeOwnerQuoteSummary.fromResponse(quoteValue, data);
      message['policy']['quote'] = {...data, 'premium': summary.premium};
      await saveMessage(context, message);
      if (!mounted) return;
     var result = await _showHomeOwnerQuote(summary);
     if(result == true){
       _proceed();
     }
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

  Future<bool?> _showHomeOwnerQuote(_HomeOwnerQuoteSummary summary) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.48),
      builder: (sheetContext) => _HomeOwnerQuoteSheet(
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
                          if (BusinessProtectPolicies.contains(
                            message['policy']['type'],
                          )) ...[
                            _FieldLabel(
                              'Total value of items to be insured in Naira',
                            ),
                            const SizedBox(height: 11),
                            _NumberField(
                              controller: _stationaryItemsValueController,
                              semanticLabel: 'Value',
                              onIncrement: () => (),
                              onDecrement: () => (),
                              validators: {
                                if (_product['minCost'] != null) 'isMin': true,
                                if (_product['minCost'] != null)
                                  'min': int.tryParse(_product['minCost']),
                                if (_product['maxCost'] != null) 'isMax': true,
                                if (_product['maxCost'] != null)
                                  'max': int.tryParse(_product['maxCost']),
                              },
                            ),
                            const SizedBox(height: 14),
                          ],
                          if (HomeOwnerPolicies.contains( message['policy']['type']) ||
                              // == HomeOwnerPolicy['HOMEPROTECT']!['name'] ||
                              message['policy']['type'] == TenantPolicy['TENANTPROTECTPLUS']!['name'])
                            ...[
                            if (HomeOwnerPolicies.contains( message['policy']['type'])) ...[
                              _FieldLabel('Building Value in Naira'),
                              const SizedBox(height: 11),
                              _NumberField(
                                controller: _buildValueController,
                                semanticLabel: 'Value',
                                onIncrement: () => (),
                                onDecrement: () => (),
                              ),
                            ],
                            const SizedBox(height: 14),
                            _FieldLabel('Value of Stationary Items You have in Naira?'),
                            const SizedBox(height: 11),
                            _NumberField(
                              controller: _stationaryItemsValueController,
                              semanticLabel: 'e.g Bathtubs, Warmer, e.t.c',
                              onIncrement: () => (),
                              onDecrement: () => (),
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel(
                              'Value of Mobile Items in the Building in Naira?',
                            ),
                            const SizedBox(height: 11),
                            _NumberField(
                              controller: _mobileItemsValueController,
                              semanticLabel: 'e.g Laptop, TVs, Refridgerator',
                              onIncrement: () => (),
                              onDecrement: () => (),
                            ),

                            const SizedBox(height: 14),
                          ],
                          _FieldLabel('Your Phone Number?'),
                          const SizedBox(height: 11),
                          _NumberField(
                            controller: _phoneController,
                            semanticLabel: 'e.g 080XXXXXXXX',
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
    print("ddmessage['policy']");

    print(message['policy']);

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
                  child:  Icon(
                    Icons.badge_outlined,
                    color: AppColors.primary,
                    size: 29,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Before you continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
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
                    color: AppColors.mutedColor,
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
                      backgroundColor: AppColors.primary,
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


class _HomeOwnerQuoteSummary {
  const _HomeOwnerQuoteSummary({
    required this.title,
    required this.premium,
    required this.product,
  });

  final String title;
  final num? premium;

  final dynamic product;

  factory _HomeOwnerQuoteSummary.fromResponse(
    dynamic response,
    Map<String, dynamic> request,
  ) {
    final productName = request['name']?.toString() ?? 'HomeOwner Insurance';

    num? premium = response.premium;
    // if (response is HomeOwnerPremium) {
    //   premium = response.premium;
    // } else if (response is GetEndowmentPremium200Response) {
    //   premium = response.premium;
    // } else if (response is Map) {
    //   premium = _toNumber(response['premium']);
    // }
    print(request);
    print('response');

    var product;
    if (HomeOwnerPolicies.contains(request['name'])) {
      product = HomeOwnerPolicy.values.firstWhere(
        (item) => item['name'] == productName,
        orElse: () => <String, dynamic>{},
      );
    } else if (BusinessProtectPolicies.contains(request['name'])) {
      product = SmePolicy.values.firstWhere(
        (item) => item['name'] == productName,
        orElse: () => <String, dynamic>{},
      );
    } else if (TenantProtectPolicies.contains(request['name'])) {
      product = TenantPolicy.values.firstWhere(
        (item) => item['name'] == productName,
        orElse: () => <String, dynamic>{},
      );
    }
    else if (PersonalAccidentPolicies.contains(request['name'])) {
      product = PersonalAccidentPolicy.values.firstWhere(
            (item) => item['name'] == productName,
        orElse: () => <String, dynamic>{},
      );
    }
    return _HomeOwnerQuoteSummary(
      title: productName,
      premium: premium,
      product: product,
    );
  }

  static num? _toNumber(dynamic value) =>
      value is num ? value : num.tryParse(value?.toString() ?? '');
}

class _HomeOwnerQuoteSheet extends StatelessWidget {
  const _HomeOwnerQuoteSheet({
    required this.summary,
    required this.onBuyNow,
    required this.onAdjust,
  });

  final _HomeOwnerQuoteSummary summary;
  final VoidCallback onBuyNow;
  final VoidCallback onAdjust;

  @override
  Widget build(BuildContext context) {
    print(summary.product);
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
                    color: _HomeOwnerPolicyQuoteState._textColor,
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
                    color: _HomeOwnerPolicyQuoteState._brandRed,
                    fontSize: 32,
                    height: 1.1,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.8,
                  ),
                ),
                const SizedBox(height: 31),
                Image.asset(
                  'assets/images/${summary.product?['productIcon']}',
                  // 'assets/images/car_insurance.png',
                  width: 280,
                  height: 112,
                  fit: BoxFit.contain,
                  semanticLabel: 'Red insured car',
                ),
                const SizedBox(height: 34),
                Text(
                  summary.product?['description'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: _HomeOwnerPolicyQuoteState._mutedColor,
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
                            foregroundColor:
                                _HomeOwnerPolicyQuoteState._brandRed,
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
                            backgroundColor:
                                _HomeOwnerPolicyQuoteState._brandRed,
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
              color: _HomeOwnerPolicyQuoteState._textColor,
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
                'Enter Details',
                style: TextStyle(
                  color: _HomeOwnerPolicyQuoteState._textColor,
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
        color: _HomeOwnerPolicyQuoteState._mutedColor,
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
        color: _HomeOwnerPolicyQuoteState._mutedColor,
      ),
      hint: Text(hint),
      decoration: _inputDecoration(),
      style: const TextStyle(
        color: _HomeOwnerPolicyQuoteState._textColor,
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

class _NumberField extends StatefulWidget {
  const _NumberField({
    required this.controller,
    required this.semanticLabel,
    VoidCallback? onIncrement,
    VoidCallback? onDecrement,
    this.validators,
  });

  final TextEditingController controller;
  final String semanticLabel;
  final Map<String, dynamic>? validators;

  @override
  State<_NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<_NumberField> {
  VoidCallback? onIncrement;

  VoidCallback? onDecrement;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: _HomeOwnerPolicyQuoteState._mutedColor,
        fontSize: 12,
      ),
      decoration: _inputDecoration(
        hintText: widget.semanticLabel,
        suffixIcon: Semantics(
          label: '${widget.semanticLabel} controls',
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

        if (widget.validators?['isMax'] == true &&
            number > widget.validators?['max']) {
          return "Value cannot be greater than ${widget.validators?['max']}";
        }
        ;
        if (widget.validators?['isMin'] == true &&
            number < widget.validators?['min']) {
          return "Value cannot be less than ${widget.validators?['min']}";
        }
        ;
        return (number == null || number <= 0) &&
                widget.validators?['isRequired']
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
        icon: Icon(
          icon,
          size: 15,
          color: _HomeOwnerPolicyQuoteState._mutedColor,
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration({String? hintText, Widget? suffixIcon}) {
  const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: _HomeOwnerPolicyQuoteState._fieldBorderColor),
  );

  return InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(
      color: _HomeOwnerPolicyQuoteState._mutedColor,
      fontSize: 12,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
    constraints: const BoxConstraints(minHeight: 39),
    border: border,
    enabledBorder: border,
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _HomeOwnerPolicyQuoteState._brandRed),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _HomeOwnerPolicyQuoteState._brandRed),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: _HomeOwnerPolicyQuoteState._brandRed),
    ),
    suffixIcon: suffixIcon,
  );
}
