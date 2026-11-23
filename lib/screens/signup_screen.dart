import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/services/auth_storage.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:simple_life/widgets/app_date_field.dart';
import 'package:uuid/uuid.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _controllers = <String, TextEditingController>{
    for (final name in [
      'email',
      'password',
      'confirmPassword',
      'firstName',
      'lastName',
      'phone',
      'occupation',
      'address',
      'streetNumber',
      'street',
      'city',
      'state',
      'country',
      'postCode',
      'idNumber',
      'idCardUrl',
      'accontNo',
      'utilityUrl',
    ])
      name: TextEditingController(),
  };

  DateTime? _dateOfBirth;
  DateTime? _idExpiry;
  CustomerPersonalGenderEnum? _gender;
  IdDetailsTypeEnum? _idType;
  bool _obscurePassword = true;
  bool _isSubmitting = false;
  bool _isNINverified = false;
  String? _sector;
  String? _sourceOfFund;
  String? _occupation;
  String? _stateOfResidence;
  String? _lgaOfResidenceId;
  List<String> _states = const [];
  List<GetLgas200ResponseInner> _lgas = const [];
  bool _isLoadingLocations = true;
  String? _locationLoadError;
  int _maritalStatus = 109;
  Map<String, dynamic>? _bank;
  String? _proofOfAddressName;
  final _proofOfAddressFieldKey = GlobalKey<FormFieldState<String>>();
  final _imagePicker = ImagePicker();

  TextEditingController _controller(String name) => _controllers[name]!;

  List<GetLgas200ResponseInner> get _availableLgas {
    final selectedState = _stateOfResidence;
    if (selectedState == null) return const [];
    return _lgas.where((lga) => lga.state == selectedState).toList();
  }

  @override
  void initState() {
    super.initState();
    _loadLocations();
  }

  Future<void> _loadLocations() async {
    setState(() {
      _isLoadingLocations = true;
      _locationLoadError = null;
    });

    try {
      final response = await GeneralRepository().getLgas();
      final uniqueLgas = <String, GetLgas200ResponseInner>{};
      final states = <String>{};

      for (final lga in response) {
        final id = lga.lgaId;
        final name = lga.lga;
        final state = lga.state;
        if (id != null &&
            id.isNotEmpty &&
            name != null &&
            name.trim().isNotEmpty &&
            state != null &&
            state.trim().isNotEmpty) {
          uniqueLgas[id] = lga;
          states.add(state);
        }
      }

      final lgas = uniqueLgas.values.toList()
        ..sort((a, b) => a.lga!.compareTo(b.lga!));
      final stateList = states.toList()..sort();

      if (!mounted) return;
      setState(() {
        _states = stateList;
        _lgas = lgas;
        _isLoadingLocations = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isLoadingLocations = false;
        _locationLoadError = 'Unable to load states and LGAs';
      });
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  String? _required(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }

  String? _emailValidator(String? value) {
    final requiredError = _required(value);
    if (requiredError != null) return requiredError;
    final emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailPattern.hasMatch(value!.trim())
        ? null
        : 'Enter a valid email address';
  }

  String? _passwordValidator(String? value) {
    final requiredError = _required(value);
    if (requiredError != null) return requiredError;
    return value!.length >= 8 ? null : 'Use at least 8 characters';
  }

  String? _urlValidator(String? value) {
    final requiredError = _required(value);
    if (requiredError != null) return requiredError;
    final uri = Uri.tryParse(value!.trim());
    return uri != null && uri.hasScheme && uri.host.isNotEmpty
        ? null
        : 'Enter a valid URL';
  }

  String? _proofOfAddressValidator(String? value) {
    final trimmed = (value ?? _controller('utilityUrl').text).trim();
    if (trimmed.isEmpty) return 'Upload proof of address';
    if (trimmed.startsWith('data:image/')) return null;
    return _urlValidator(trimmed);
  }

  String _mimeTypeForImagePath(String path) {
    final lower = path.toLowerCase();
    if (lower.endsWith('.png')) return 'image/png';
    if (lower.endsWith('.webp')) return 'image/webp';
    return 'image/jpeg';
  }

  Uint8List? _bytesFromDataUrl(String dataUrl) {
    final commaIndex = dataUrl.indexOf(',');
    if (commaIndex == -1) return null;
    try {
      return base64Decode(dataUrl.substring(commaIndex + 1));
    } on FormatException {
      return null;
    }
  }

  Future<void> _pickProofOfAddress(ImageSource source) async {
    try {
      final file = await _imagePicker.pickImage(
        source: source,
        imageQuality: 85,
        maxWidth: 1920,
      );
      if (file == null) return;

      final bytes = await file.readAsBytes();
      final mime = _mimeTypeForImagePath(file.path);
      final dataUrl = 'data:$mime;base64,${base64Encode(bytes)}';

      _controller('utilityUrl').text = dataUrl;
      _proofOfAddressFieldKey.currentState?.didChange(dataUrl);
      if (!mounted) return;
      setState(() {
        _proofOfAddressName = file.name;
      });
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not pick image: $error')));
    }
  }

  void _clearProofOfAddress() {
    _controller('utilityUrl').clear();
    _proofOfAddressFieldKey.currentState?.didChange('');
    setState(() => _proofOfAddressName = null);
  }

  Widget _proofOfAddressUpload() {
    final utilityUrl = _controller('utilityUrl').text;
    final previewBytes = utilityUrl.startsWith('data:image/')
        ? _bytesFromDataUrl(utilityUrl)
        : null;
    return FormField<String>(
      key: _proofOfAddressFieldKey,
      initialValue: utilityUrl,
      validator: _proofOfAddressValidator,
      builder: (field) {
        final hasUpload = utilityUrl.trim().isNotEmpty;
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Proof of address',
                style: TextStyle(
                  color: field.hasError
                      ? Theme.of(context).colorScheme.error
                      : AppColors.textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Upload a recent utility bill or official document showing '
                'your residential address.',
                style: TextStyle(color: AppColors.mutedColor, fontSize: 13),
              ),
              const SizedBox(height: 12),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: field.hasError
                        ? Theme.of(context).colorScheme.error
                        : const Color(0xFFD9DCE1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (previewBytes != null) ...[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.memory(
                            previewBytes,
                            height: 140,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () =>
                                  _pickProofOfAddress(ImageSource.gallery),
                              icon: const Icon(Icons.photo_library_outlined),
                              label: const Text('Gallery'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primary,
                                side: const BorderSide(
                                  color: AppColors.primary,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () =>
                                  _pickProofOfAddress(ImageSource.camera),
                              icon: const Icon(Icons.photo_camera_outlined),
                              label: const Text('Camera'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primary,
                                side: const BorderSide(
                                  color: AppColors.primary,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (hasUpload) ...[
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_circle_rounded,
                              color: AppColors.primary,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                _proofOfAddressName ?? 'Document selected',
                                style: const TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            TextButton(
                              onPressed: _clearProofOfAddress,
                              child: const Text('Remove'),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              if (field.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4),
                  child: Text(
                    field.errorText!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  String _formatDate(DateTime value) => formatAppDate(value);
  Map<String, dynamic> userDetails = {};

  bool? _isPep;

  String _normalizePhone(String? value) {
    final digits = (value ?? '').replaceAll(RegExp(r'\D'), '');
    if (digits.length >= 10) {
      return digits.substring(digits.length - 10);
    }
    return digits;
  }

  String _maskIdNumber(String idNumber) {
    if (idNumber.length < 7) return idNumber;
    return '${idNumber.substring(0, 3)}*****${idNumber.substring(idNumber.length - 3)}';
  }

  void _applyVerifiedNinDetails() {
    final nin = userDetails['data']?['nin'];
    if (nin == null) return;

    nin['photo'] = null;
    _idType = IdDetailsTypeEnum.nimc;
    _controller('firstName').text = nin['firstname']
        .toString()
        .trim()
        .toUpperCase();
    _controller('lastName').text = nin['lastname']
        .toString()
        .trim()
        .toUpperCase();
    _controller('phone').text = nin['phone'].toString().trim();
    _controller('address').text =
        '${nin['residence']?['address1'] ?? ''} ${nin['residence']?['town'] ?? ''} ${nin['residence']?['lga'] ?? ''} ${nin['residence']?['state'] ?? ''}'
            .trim();
    _gender = nin['gender'].toString().trim() == 'm'
        ? CustomerPersonalGenderEnum.male
        : CustomerPersonalGenderEnum.female;

    final rawBirthdate = nin['birthdate'].toString().trim();
    if (rawBirthdate.length == 10) {
      final formattedIsoStr =
          '${rawBirthdate.substring(6, 10)}-${rawBirthdate.substring(3, 5)}-${rawBirthdate.substring(0, 2)}';
      _dateOfBirth = DateTime.tryParse(formattedIsoStr);
    }
  }

  Future<bool> _showNinOwnershipConfirmationSheet({
    required String idNumber,
    required String registeredPhone,
  }) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.48),
      builder: (sheetContext) => _NinPhoneConfirmationSheet(
        idNumberDisplay: _maskIdNumber(idNumber),
        registeredPhone: registeredPhone,
        normalizePhone: _normalizePhone,
      ),
    ).then((value) => value ?? false);
  }

  Future<void> _verifyNIMC() async {
    final idNumber = _controller('idNumber').text.trim();
    if (idNumber.length != 11) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('NIN must be eleven digits')),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    try {
      final response = await GeneralRepository().verifyNIMC(idNumber);
      if (!mounted) return;

      final nin = response?['data']?['nin'];
      if (response == null || nin == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to verify this ID number. Please try again.'),
          ),
        );
        return;
      }

      userDetails = response;
      final registeredPhone = nin['phone']?.toString() ?? '';
      if (registeredPhone.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'No phone number is linked to this ID. Contact support to update your NIN record.',
            ),
          ),
        );
        return;
      }

      final confirmed = await _showNinOwnershipConfirmationSheet(
        idNumber: idNumber,
        registeredPhone: registeredPhone,
      );
      if (!mounted || !confirmed) return;

      _applyVerifiedNinDetails();
      setState(() => _isNINverified = true);
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Unable to verify this ID number. Please try again.'),
        ),
      );
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  Future<void> _register() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid ||
        _dateOfBirth == null ||
        _idExpiry == null ||
        _gender == null ||
        _idType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Complete all required fields')),
      );
      return;
    }

    setState(() => _isSubmitting = true);
    final repository = GeneralRepository();

    try {
      final firstName = _controller('firstName').text.trim();
      final lastName = _controller('lastName').text.trim();
      final email = _controller('email').text.trim();
      final phone = _controller('phone').text.trim();
      final password = _controller('password').text;

      await repository.signUpUser(
        email: email,
        name: '$firstName $lastName',
        phone: phone,
        password: password,
      );

      final token = await repository.logUserIn(email, password);
      if (token == null) {
        throw StateError('The account was created, but sign in failed');
      }
      await AuthStorageService().saveToken(
        jsonEncode({
          'token': token.token,
          'expiry': token.expiry,
          'refreshToken': token.refreshToken,
          'refreshExpiry': token.refreshExpiry,
        }),
      );

      final address = Address(
        (b) => b
          ..address = _controller('address').text.trim()
          ..streetNumber = _controller('streetNumber').text.trim()
          ..street = _controller('street').text.trim()
          ..city = _controller('city').text.trim()
          ..state = _controller('state').text.trim()
          ..country = _controller('country').text.trim()
          ..postCode = _controller('postCode').text.trim(),
      );
      final idDetails = IdDetails(
        (b) => b
          ..number = _controller('idNumber').text.trim()
          ..expiry = _formatDate(_idExpiry!)
          ..type = _idType!,
      );
      final customer = Customer(
        (b) => b
          ..customerId = const Uuid().v4()
          ..firstName = firstName
          ..lastName = lastName
          ..dateOfBirth = Date(
            _dateOfBirth!.year,
            _dateOfBirth!.month,
            _dateOfBirth!.day,
          )
          ..gender = _gender
          ..phone = phone
          ..occupation = _controller('occupation').text.trim()
          ..address = address as AddressBuilder?
          ..idDetails.replace(idDetails)
          ..idCardImgUrl = _controller('idCardUrl').text.trim()
          ..utilityImgUrl = _controller('utilityUrl').text.trim(),
      );

      await repository.createCustomerProfile(customer);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration completed successfully')),
      );
      context.go(AppRoutes.selectProfile);
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Registration failed: $error')));
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () =>
              context.canPop() ? context.pop() : context.go(AppRoutes.login),
          icon: const Icon(Icons.chevron_left_rounded, size: 30),
        ),
        title: const Text(
          'Create your account',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 36),
          children: [
            const Text(
              'Tell us about yourself',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            if (_isNINverified == false) ...[
              _field(
                'idNumber',
                'ID number',
                keyboardType: TextInputType.number,
                // validator: (value){return value!.length != 11 ? 'NIN must be Eleven Digits':null;}
                validator: (value) =>
                    value!.length != 11 ? 'NIN must be Eleven Digits' : null,
              ),
              SizedBox(
                height: 54,
                child: FilledButton(
                  // onPressed: _verifyNIMC,
                  onPressed: _isSubmitting ? null : _verifyNIMC,

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
              const Text(
                'All fields are required to complete your customer profile.',
                style: TextStyle(color: AppColors.mutedColor, fontSize: 14),
              ),
              const SizedBox(height: 24),
              _section(
                title: 'Personal details',
                icon: Icons.person_outline_rounded,
                children: [
                  // _field('firstName', 'First name'),
                  // _field('lastName', 'Last name'),
                  // AppDateField(
                  //   label: 'Date of birth',
                  //   value: _dateOfBirth,
                  //   initialDate: DateTime(DateTime.now().year - 30),
                  //   firstDate: DateTime(1900),
                  //   lastDate: DateTime(
                  //     DateTime.now().year - 18,
                  //     DateTime.now().month,
                  //     DateTime.now().day,
                  //   ),
                  //   onChanged: (date) {
                  //     setState(() => _dateOfBirth = date);
                  //   },
                  // ),
                  // DropdownButtonFormField<CustomerPersonalGenderEnum>(
                  //   initialValue: _gender,
                  //   decoration: _decoration('Gender'),
                  //   items: const [
                  //     DropdownMenuItem(
                  //       value: CustomerPersonalGenderEnum.male,
                  //       child: Text('Male'),
                  //     ),
                  //     DropdownMenuItem(
                  //       value: CustomerPersonalGenderEnum.female,
                  //       child: Text('Female'),
                  //     ),
                  //   ],
                  //   onChanged: (value) => setState(() => _gender = value),
                  //   validator: (value) =>
                  //       value == null ? 'Select a gender' : null,
                  // ),
                  // _field(
                  //   'phone',
                  //   'Phone number',
                  //   keyboardType: TextInputType.phone,
                  // ),
                  // _field(
                  //   'phone',
                  //   'Phone number',
                  //   keyboardType: TextInputType.phone,
                  // ),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    initialValue: _sector,
                    decoration: _decoration('What Sector are you in?'),
                    items: OCCUPATIONS.keys
                        .map<DropdownMenuItem<String>>(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() {
                      _sector = value;
                      _occupation = null;
                    }),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Select a sector'
                        : null,
                  ),
                  const SizedBox(height: 14),
                  DropdownButtonFormField<String>(
                    initialValue: _occupation,
                    decoration: _decoration('What is your occupation?'),
                    isExpanded: true,
                    items: (OCCUPATIONS[_sector] ?? const <Object>[])
                        .map<DropdownMenuItem<String>>((value) {
                          final occupation = value as Map<String, dynamic>;
                          return DropdownMenuItem<String>(
                            value:
                                '${occupation['value'].toString()}ç${occupation['title'].toString()}',
                            child: Text(
                              occupation['title'].toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                        })
                        .toList(),
                    onChanged: (value) => setState(() => _occupation = value),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Select a sector'
                        : null,
                  ),
                  const SizedBox(height: 14),
                  //   // DropdownMenuItem(
                  //   //   value: CustomerPersonalGenderEnum.male,
                  //   //   child: Text('Male'),
                  //   // ),
                  //   // DropdownMenuItem(
                  //   //   value: CustomerPersonalGenderEnum.female,
                  //   //   child: Text('Female'),
                  //   // ),
                  //   onChanged: (value) => setState(() => _occupation = value),
                  //   validator: (value) => value == null || value.isEmpty
                  //       ? 'Select an Occupation'
                  //       : null,
                  // ),
                  //

                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    initialValue: _sourceOfFund,
                    decoration: _decoration('Source of Fund?'),
                    items: SourceOfWealth.values
                        .map(
                          (source) => DropdownMenuItem<String>(
                            value: '${source.value}ç${source.title}',
                            child: Text(
                              source.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() => _sourceOfFund = value),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Select the source of funds'
                        : null,
                  ),
                  const SizedBox(height: 14),
                  DropdownButtonFormField<int>(
                    isExpanded: true,
                    initialValue: _maritalStatus,
                    decoration: _decoration('Your Marital Status?'),
                    items: [
                      DropdownMenuItem<int>(
                        value: 108,
                        child: Text(
                          'Married',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DropdownMenuItem<int>(
                        value: 109,
                        child: Text(
                          'Single',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DropdownMenuItem<int>(
                        value: 110,
                        child: Text(
                          'Widowed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DropdownMenuItem<int>(
                        value: 111,
                        child: Text(
                          'Divorced',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],

                    onChanged: (value) =>
                        setState(() => _maritalStatus = value!),
                    validator: (value) =>
                        value == null ? 'Select Marital Status' : null,
                  ),
                  const SizedBox(height: 14),
                  DropdownButtonFormField<bool>(
                    isExpanded: true,
                    initialValue: _isPep,
                    decoration: _decoration(
                      'Are you a Politically Exposed Person?',
                    ),
                    items: [
                      DropdownMenuItem<bool>(
                        value: true,
                        child: Text(
                          'Yes',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DropdownMenuItem<bool>(
                        value: false,
                        child: Text(
                          'No',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    onChanged: (value) => setState(() => _isPep = value),
                    validator: (value) =>
                        value == null ? 'Select PEP Status' : null,
                  ),
                  const SizedBox(height: 14),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    initialValue: _stateOfResidence,
                    decoration: _decoration('State of Residence').copyWith(
                      suffixIcon: _isLoadingLocations
                          ? const Padding(
                              padding: EdgeInsets.all(14),
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppColors.primary,
                                ),
                              ),
                            )
                          : null,
                    ),
                    items: _states
                        .map(
                          (state) => DropdownMenuItem<String>(
                            value: state,
                            child: Text(
                              state,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: _isLoadingLocations
                        ? null
                        : (value) {
                            setState(() {
                              _stateOfResidence = value;
                              _lgaOfResidenceId = null;
                            });
                            _controller('state').text = value ?? '';
                            _controller('city').clear();
                          },
                    validator: (value) =>
                        value == null ? 'Select your state of residence' : null,
                  ),
                  const SizedBox(height: 14),
                  DropdownButtonFormField<String>(
                    key: ValueKey(_stateOfResidence),
                    isExpanded: true,
                    initialValue: _lgaOfResidenceId,
                    decoration: _decoration('LGA of Residence').copyWith(
                      helperText: _stateOfResidence == null
                          ? 'Select a state first'
                          : null,
                    ),
                    items: _availableLgas
                        .map(
                          (lga) => DropdownMenuItem<String>(
                            value: lga.lgaId,
                            child: Text(
                              lga.lga!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: _isLoadingLocations || _stateOfResidence == null
                        ? null
                        : (value) {
                            final selectedLga = _availableLgas.firstWhere(
                              (lga) => lga.lgaId == value,
                            );
                            setState(() => _lgaOfResidenceId = value);
                            _controller('city').text = selectedLga.lga!;
                          },
                    validator: (value) =>
                        value == null ? 'Select your LGA of residence' : null,
                  ),
                  if (_locationLoadError != null)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        onPressed: _loadLocations,
                        icon: const Icon(Icons.refresh_rounded),
                        label: Text('$_locationLoadError. Retry'),
                      ),
                    ),
                  const SizedBox(height: 14),
                  _field('address', 'Address'),
                  _proofOfAddressUpload(),
                ],
              ),
              _section(
                title: 'Bank Details',
                icon: Icons.money_outlined,
                children: [
                  // DropdownButtonFormField<dynamic>(
                  //   initialValue: _bank,
                  //   decoration: _decoration('Bank'),
                  //   items: [
                  //     ...(NIBSS_BANKS.map((value) {
                  //       return DropdownMenuItem(
                  //         value: value,
                  //         child: Text(value['bankName']),
                  //       );
                  //     }).toList()),
                  //
                  //     // const DropdownMenuItem(
                  //     //   value: IdDetailsTypeEnum.internationalPassport,
                  //     //   child: Text('International passport'),
                  //     // ),
                  //     // const DropdownMenuItem(
                  //     //   value: IdDetailsTypeEnum.bvn,
                  //     //   child: Text('BVN'),
                  //     // ),
                  //     // const DropdownMenuItem(
                  //     //   value: IdDetailsTypeEnum.votersCard,
                  //     //   child: Text("Voter's card"),
                  //     // ),
                  //     // const DropdownMenuItem(
                  //     //   value: IdDetailsTypeEnum.nimc,
                  //     //   child: Text('NIMC'),
                  //     // ),
                  //   ],
                  //   onChanged: (value) => setState(() => _idType = value),
                  //   validator: (value) =>
                  //       value == null ? 'Select an ID type' : null,
                  // ),
                  DropdownMenu<Map<String, dynamic>>(
                    initialSelection: _bank,
                    enableSearch: true, // Enables the search input field
                    enableFilter:
                        true, // Filters items in real-time as you type
                    requestFocusOnTap:
                        true, // Automatically opens the keyboard on tap
                    label: const Text('Select Bank'),
                    onSelected: (value) {
                      setState(() => _bank = value);
                    },
                    expandedInsets: EdgeInsets.zero,
                    dropdownMenuEntries: NIBSS_BANKS.map((bank) {
                      return DropdownMenuEntry<Map<String, dynamic>>(
                        value: bank,
                        label: bank['bankName'].toString(),
                      );
                    }).toList(),
                    // validator: (value) => value == null ? 'Select a bank' : null,
                  ),
                  const SizedBox(height: 14),
                  _field(
                    'accontNo',
                    'Account Number',
                    keyboardType: TextInputType.number,
                    validator: (value) => value!.length != 10
                        ? 'Account number must be ten digits'
                        : null,
                    onBlur: _verifyAccountDetails,
                  ),
                  // AppDateField(
                  //   label: 'ID expiry date',
                  //   value: _idExpiry,
                  //   initialDate: DateTime(DateTime.now().year + 1),
                  //   firstDate: DateTime.now(),
                  //   lastDate: DateTime(DateTime.now().year + 30),
                  //   onChanged: (date) {
                  //     setState(() => _idExpiry = date);
                  //   },
                  // ),
                  // _field(
                  //   'idCardUrl',
                  //   'ID card image URL',
                  //   keyboardType: TextInputType.url,
                  //   validator: _urlValidator,
                  // ),
                ],
              ),
              const SizedBox(height: 8),

              _section(
                title: 'Account details',
                icon: Icons.lock_outline_rounded,
                children: [
                  _field(
                    'email',
                    'Email address',
                    keyboardType: TextInputType.emailAddress,
                    validator: _emailValidator,
                  ),
                  _field(
                    'password',
                    'Password',
                    obscureText: _obscurePassword,
                    validator: _passwordValidator,
                    suffixIcon: IconButton(
                      onPressed: () =>
                          setState(() => _obscurePassword = !_obscurePassword),
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                  _field(
                    'confirmPassword',
                    'Confirm password',
                    obscureText: true,
                    validator: (value) {
                      final error = _passwordValidator(value);
                      if (error != null) return error;
                      return value == _controller('password').text
                          ? null
                          : 'Passwords do not match';
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 54,
                child: FilledButton(
                  onPressed: _isSubmitting ? null : _register,
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
                          'Create account',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }


  Widget _section({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE7E8EC)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 22),
              const SizedBox(width: 9),
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          ...children,
        ],
      ),
    );
  }

  Widget _field(
    String name,
    String label, {
    TextInputType? keyboardType,
    bool obscureText = false,
    int maxLines = 1,
    String? Function(String?)? validator,
    Widget? suffixIcon,
    ValueChanged<String>? onBlur,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Focus(
        onFocusChange: (hasFocus) {
          if (!hasFocus) {
            onBlur?.call(_controller(name).text);
          }
        },
        child: TextFormField(
          controller: _controller(name),
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLines,
          validator: validator ?? _required,
          decoration: _decoration(label).copyWith(suffixIcon: suffixIcon),
        ),
      ),
    );
  }

  InputDecoration _decoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
      ),
    );
  }

  void _verifyAccountDetails(String accountNumber) {
    if (_bank?['nipcode'] != null) {
      GeneralRepository()
          .verifyAccountDetails(accountNumber, _bank?['nipcode'] ?? '')
          ?.then((value) {
            print(value);
          });
    }
  }
}

class _NinPhoneConfirmationSheet extends StatefulWidget {
  const _NinPhoneConfirmationSheet({
    required this.idNumberDisplay,
    required this.registeredPhone,
    required this.normalizePhone,
  });

  final String idNumberDisplay;
  final String registeredPhone;
  final String Function(String?) normalizePhone;

  @override
  State<_NinPhoneConfirmationSheet> createState() =>
      _NinPhoneConfirmationSheetState();
}

class _NinPhoneConfirmationSheetState
    extends State<_NinPhoneConfirmationSheet> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  String? _errorMessage;
  bool _isVerifying = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _confirm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    final entered = widget.normalizePhone(_phoneController.text);
    final expected = widget.normalizePhone(widget.registeredPhone);

    if (entered.isEmpty || expected.isEmpty || entered != expected) {
      setState(() {
        _errorMessage =
            'This phone number does not match the one linked to your ID.';
      });
      return;
    }

    setState(() {
      _errorMessage = null;
      _isVerifying = true;
    });
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.viewInsetsOf(context);
    String maskPhoneNumber(String phoneNumber) {
      if (phoneNumber.length < 7) return phoneNumber;
      return '${phoneNumber.substring(0, 3)}*****${phoneNumber.substring(phoneNumber.length - 3)}';
    }

    return Padding(
      padding: EdgeInsets.only(bottom: viewInsets.bottom),
      child: Container(
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
          child: Form(
            key: _formKey,
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
                    Icons.verified_user_outlined,
                    color: AppColors.primary,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Confirm ID ownership',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'To confirm you are the owner of NIN enter the Phone Number registered with this ID: ${maskPhoneNumber(widget.registeredPhone)}.',
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => _confirm(),
                  onChanged: (_) {
                    if (_errorMessage != null) {
                      setState(() => _errorMessage = null);
                    }
                  },
                  validator: (value) {
                    final digits = widget.normalizePhone(value);
                    if (digits.length < 10) {
                      return 'Enter the phone number linked to your ID';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Phone number on ID',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1.4,
                      ),
                    ),
                  ),
                ),
                if (_errorMessage != null) ...[
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: _isVerifying ? null : _confirm,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _isVerifying
                      ? null
                      : () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
