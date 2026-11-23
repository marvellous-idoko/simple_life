import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:uuid/uuid.dart';

import '../Bloc__state/general_bloc.dart';

class RegisterMotorScreen extends StatefulWidget {
  const RegisterMotorScreen({super.key});

  @override
  State<RegisterMotorScreen> createState() => _RegisterMotorScreenState();
}

class _RegisterMotorScreenState extends State<RegisterMotorScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _fieldBorderColor = AppColors.textColor;

  final _formKey = GlobalKey<FormState>();
  final _registrationController = TextEditingController();
  final _makeController = TextEditingController();
  final _modelController = TextEditingController();
  final _chassisController = TextEditingController();
  final _engineController = TextEditingController();
  final _yearController = TextEditingController();

  String? _use;
  String? _type;
  String? _value;

  bool _isSubmitting = false;
  Map<String, dynamic> message = {};

  var _isRegNOverified = false;

  List<Map<String, String>> get _typeOptions {
    if (_use == 'Commercial') {
      return const [
        {'value': 'Saloon', 'label': 'Saloon'},
        {'value': 'SUV', 'label': 'SUV'},
        {'value': 'Light Truck', 'label': 'Light Truck'},
        {'value': 'Heavy Duty Truck', 'label': 'Heavy Duty Truck'},
      ];
    }
    return const [
      {'value': 'Saloon', 'label': 'Saloon'},
      {'value': 'SUV', 'label': 'SUV'},
    ];
  }

  @override
  void initState() {
    super.initState();
    message = Map<String, dynamic>.from(
      context.read<GeneralBloc>().state.message,
    );
    final quote = message['policy']?['quote'];
    if (quote is Map) {
      _use = quote['motorClass']?.toString();
      final motorType = quote['motorType']?.toString();
      final value = quote['value']?.toString();
      if (motorType != null) {
        _type = motorType;
      }
    }
  }

  @override
  void dispose() {
    _registrationController.dispose();
    _makeController.dispose();
    _modelController.dispose();
    _chassisController.dispose();
    _engineController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  MotorParticularsTypeEnum? _parseType(String? value) {
    if (value == null) return null;
    switch (value) {
      case 'Saloon':
        return MotorParticularsTypeEnum.saloon;
      case 'SUV':
        return MotorParticularsTypeEnum.SUV;
      case 'Light Truck':
        return MotorParticularsTypeEnum.lightTruck;
      case 'Heavy Duty Truck':
        return MotorParticularsTypeEnum.heavyDutyTruck;
      default:
        return null;
    }
  }

  MotorParticularsUseEnum? _parseUse(String? value) {
    if (value == 'Private') return MotorParticularsUseEnum.private;
    if (value == 'Commercial') return MotorParticularsUseEnum.commercial;
    return null;
  }

  String? _ownerName() {
    final customer = message['profile']?['customer'];
    if (customer is! Map) return null;
    final first = customer['firstName']?.toString().trim() ?? '';
    final last = customer['lastName']?.toString().trim() ?? '';
    final name = '$first $last'.trim();
    return name.isEmpty ? null : name;
  }

  Future<void> _proceed() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() => _isSubmitting = true);
    final motorId = const Uuid().v4();
    final year = int.tryParse(_yearController.text.trim());
    final quote = message['policy']?['quote'];
    final motorValue = quote is Map
        ? num.tryParse(quote['motorValue']?.toString() ?? '')
        : null;

    final particulars = $MotorParticulars(
      (b) => b
        ..motorId = motorId
        ..registrationNumber = _registrationController.text.trim()
        ..make = _makeController.text.trim()
        ..model = _modelController.text.trim()
        ..year = year
        ..chassis = _chassisController.text.trim()
        ..use = MotorParticularsUseEnum.private
        ..use = _parseUse(_use)
        ..type = _parseType(_type)
        ..type = MotorParticularsTypeEnum.SUV
        ..motorValue = 0
        ..value = (_value ?? 0) as num?
        ..owner = _ownerName() ?? 'NMiuhg'
        ..engineNumber = _chassisController.text.trim(),
    );
    if (!mounted) return;
    // unawaited(
    //   showDialog<void>(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (dialogContext) => PopScope(
    //       canPop: false,
    //       child: Center(
    //         child: Card(
    //           margin: const EdgeInsets.symmetric(horizontal: 32),
    //           child: Padding(
    //             padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 const SizedBox(
    //                   width: 44,
    //                   height: 44,
    //                   child: CircularProgressIndicator(
    //                     strokeWidth: 3,
    //                     color: _brandRed,
    //                   ),
    //                 ),
    //                 const SizedBox(height: 20),
    //                 const Text(
    //                   'Verifying',
    //                   style: TextStyle(
    //                     fontSize: 18,
    //                     fontWeight: FontWeight.w600,
    //                     color: _textColor,
    //                   ),
    //                 ),
    //                 const SizedBox(height: 8),
    //                 const Text(
    //                   'Please give us a moment while we confirm your\nregistration number.',
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     fontSize: 12,
    //                     height: 1.45,
    //                     color: _mutedColor,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    try {
      print(particulars);
      await GeneralRepository().createMotorParticulars(motorId, particulars);
      message['policy']['motor'] = {
        'motorId': motorId,
        'registrationNumber': _registrationController.text.trim(),
        'make': _makeController.text.trim(),
        'model': _modelController.text.trim(),
        'year': year,
        'chassis': _chassisController.text.trim(),
        'engineNumber': _engineController.text.trim(),
        'use': _use,
        'type': _type,
      };
      await saveMessage(context, message);
      if (!mounted) return;
      createMotorPolicyDocument(context);
    } catch (error) {
      debugPrint('$error');
      if (!mounted) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              apiErrorMessage(
                error,
                fallback:
                    'Could not save vehicle details. Please try again.',
              ),
            ),
          ),
        );
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
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
                          if (_isRegNOverified == false) ...[
                            const SizedBox(height: 17),
                            _FieldLabel('Registration Number?'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _registrationController,
                              hintText: 'ABC-12xxx',
                              textCapitalization: TextCapitalization.characters,
                              validator: (v) => (v == null || v.trim().isEmpty)
                                  ? 'Enter registration number'
                                  : null,
                            ),
                            const SizedBox(height: 14),

                            SizedBox(
                              height: 54,
                              width: double.infinity,
                              child: FilledButton(
                                // onPressed: _verifyNIMC,
                                onPressed: _isSubmitting
                                    ? null
                                    : _verifyPlateNO,

                                style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),

                                child: _isSubmitting
                                    ? const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : const Text(
                                        'Proceed',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                              ),
                            ),
                          ] else ...[
                            _FieldLabel('Vehicle Category?'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _use,
                              hint: 'Commercial',
                              items: const [
                                {'value': 'Private', 'label': 'Private'},
                                {'value': 'Commercial', 'label': 'Commercial'},
                              ],
                              onChanged: (value) => setState(() {
                                _use = value;
                                if (_type != null &&
                                    !_typeOptions.any(
                                      (o) => o['value'] == _type,
                                    )) {
                                  _type = null;
                                }
                              }),
                              validator: (v) =>
                                  v == null ? 'Select vehicle category' : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Vehicle Type?'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _type,
                              hint: 'Sedan',
                              items: _typeOptions,
                              onChanged: (value) =>
                                  setState(() => _type = value),
                              validator: (v) =>
                                  v == null ? 'Select vehicle type' : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Make?'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _makeController,
                              hintText: 'xxxxxx',
                              validator: (v) => (v == null || v.trim().isEmpty)
                                  ? 'Enter vehicle make'
                                  : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Model?'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _modelController,
                              hintText: 'Enter model',
                              validator: (v) => (v == null || v.trim().isEmpty)
                                  ? 'Enter vehicle model'
                                  : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Year of Production?'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _yearController,
                              hintText: '1996',
                              keyboardType: TextInputType.number,
                              prefixIcon: const Icon(
                                Icons.calendar_today_outlined,
                                size: 18,
                                color: _mutedColor,
                              ),
                              validator: (v) {
                                final year = int.tryParse(v ?? '');
                                if (year == null ||
                                    year < 1950 ||
                                    year > DateTime.now().year + 1) {
                                  return 'Enter a valid year';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Chassis Number?'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _chassisController,
                              hintText: 'Enter chassis number',
                              validator: (v) => (v == null || v.trim().isEmpty)
                                  ? 'Enter chassis number'
                                  : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Engine Number (optional)'),
                            const SizedBox(height: 11),
                            _MotorTextField(
                              controller: _engineController,
                              hintText: 'Enter engine number',
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                if (_isRegNOverified == true)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: OutlinedButton(
                            onPressed: _isSubmitting
                                ? null
                                : () => context.pop(),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              side: const BorderSide(color: _brandRed),
                              foregroundColor: _brandRed,
                            ),
                            child: const Icon(Icons.chevron_left_rounded),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: FilledButton(
                              onPressed: _isSubmitting ? null : _proceed,
                              style: FilledButton.styleFrom(
                                backgroundColor: _brandRed,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: _isSubmitting
                                  ? const SizedBox.square(
                                      dimension: 22,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.4,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text(
                                      'Proceed',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
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

  _verifyPlateNO() async {
    final plateNo = _registrationController.text.trim().toUpperCase();
    if (plateNo.length < 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Plate No must be more than three characters'),
        ),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    try {
      final response = await GeneralRepository().verifyPlateNo(plateNo);
      if (!mounted) return;
      setState(() => _isSubmitting = false);
      if (response == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to verify this ID number. Please try again.'),
          ),
        );
        return;
      }

      var motorDetails = response?['data']?['license_plate'];
      print(response?['data']?['license_plate']);
      _makeController.text = motorDetails['vehicleMake'].toString().trim();
      _modelController.text = motorDetails['vehicleModel'].toString().trim();
      _yearController.text = Date.now().year.toString();
      _chassisController.text = motorDetails['chassisNumber'].toString().trim();
      _proceed();
    } catch (e) {
      print(e);
    }
  }

  void createMotorPolicyDocument(BuildContext context) {
    message['policy']['document'] = {'documentId':const Uuid().v4()};
    saveMessage(context, message);
    createMotorDocument(context)?.then((onValue) {
      addMotorToDocument(context).then((onValue) {
        addCustomerToGeneralDocucment(context).then((onValue) {
          context.push(AppRoutes.motorPolicySummary);
        });
      });
    });
  }
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
              color: _RegisterMotorScreenState._textColor,
              size: 25,
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Vehicle Details',
            style: TextStyle(
              color: _RegisterMotorScreenState._textColor,
              fontSize: 20,
              height: 1.2,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.2,
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
        color: _RegisterMotorScreenState._mutedColor,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _MotorTextField extends StatelessWidget {
  const _MotorTextField({
    required this.controller,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: _RegisterMotorScreenState._fieldBorderColor,
      ),
    );

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      style: const TextStyle(
        color: _RegisterMotorScreenState._mutedColor,
        fontSize: 12,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: _RegisterMotorScreenState._mutedColor,
          fontSize: 12,
        ),
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 12,
        ),
        border: border,
        enabledBorder: border,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: _RegisterMotorScreenState._brandRed),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: _RegisterMotorScreenState._brandRed),
        ),
      ),
      validator: validator,
    );
  }
}

class _FormDropdown extends StatelessWidget {
  const _FormDropdown({
    required this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.validator,
  });

  final String? value;
  final String hint;
  final List<Map<String, String>> items;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: _RegisterMotorScreenState._fieldBorderColor,
      ),
    );

    return DropdownButtonFormField<String>(
      initialValue: value,
      isExpanded: true,
      hint: Text(hint),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
        border: border,
        enabledBorder: border,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: _RegisterMotorScreenState._brandRed),
        ),
      ),
      style: const TextStyle(
        color: _RegisterMotorScreenState._textColor,
        fontSize: 12,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: _RegisterMotorScreenState._mutedColor,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item['value'],
              child: Text(item['label']!),
            ),
          )
          .toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
