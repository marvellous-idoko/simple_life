import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart'
    show Response, DioException, Dio, Options, Headers;
import 'package:flutter/foundation.dart';
import 'package:openapi/openapi.dart';
import 'package:pay_with_paystack/model/payment_data.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:built_value/json_object.dart';
import 'package:simple_life/screens/register_general_protection_screen.dart';

import '../api_proxy.dart';

class GeneralRepository {
  GeneralRepository();

  Future<void> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<IsPasswordLogin200Response?> isPasswordLogin(String identity) async {
    final response = await ApiClient().api.isPasswordLogin(
      resetOtpRequest: ResetOtpRequest((b) => b.identity = identity),
    );
    return response.data;
  }

  Future<void> createOtp(String identity) async {
    await ApiClient().api.createOTP(
      resetOtpRequest: ResetOtpRequest(
        (builder) => builder.identity = identity,
      ),
    );
  }

  Future<AuthToken?> validateOtp(String identity, String otp) async {
    final response = await ApiClient().api.validateOTP(
      validateOTPRequest: ValidateOTPRequest(
        (builder) => builder
          ..identity = identity
          ..otp = otp,
      ),
    );
    return response.data;
  }

  Future<AuthToken?> logUserIn(String identity, String password) async {
    try {
      final response = await ApiClient().api.logUserIn(
        logUserInRequest: LogUserInRequest(
          (b) => b
            ..identity = identity
            ..password = password,
        ),
      );

      return response.data;
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      rethrow;
    }
  }

  Future<void> signUpUser({
    required String email,
    required String name,
    required String phone,
    required String password,
  }) async {
    await ApiClient().api.signUpUser(
      signUpUserRequest: SignUpUserRequest(
        (b) => b
          ..identity = email
          ..name = name
          ..phone = phone
          ..password = password
          ..confirmPassword = password,
      ),
    );
  }

  Future<void> createCustomerProfile(Customer customer) async {
    final api = ApiClient().api;

    await api.createCustomer(
      customerId: customer.customerId,
      customerPersonal: customer,
    );

    if (customer.address != null) {
      await api.updateCustomerAddress(
        customerId: customer.customerId,
        address: customer.address,
      );
    }

    if (customer.idDetails != null) {
      await api.updateCustomerIdDetails(
        customerId: customer.customerId,
        idDetails: customer.idDetails,
      );
    }

    if (customer.idCardImgUrl?.isNotEmpty == true) {
      await api.updateCustomerIdCard(
        customerId: customer.customerId,
        upload: $Upload(
          (b) => b
            ..url = customer.idCardImgUrl
            ..use = UploadUseEnum.idcard,
        ),
      );
    }

    if (customer.utilityImgUrl?.isNotEmpty == true) {
      await api.updateCustomerUtilityBill(
        customerId: customer.customerId,
        upload: $Upload(
          (b) => b
            ..url = customer.utilityImgUrl
            ..use = UploadUseEnum.utility,
        ),
      );
    }
  }

  Future<GetLoggedInUser200Response?> getLoggedInUser() async {
    try {
      final response = await ApiClient().api.getLoggedInUser();
      return response.data;
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');

      rethrow;
    }
  }

  Future<List<PolicyInfo>?> getPolicies() async {
    try {
      final response = await ApiClient().api.getPolicies();
      return response.data?.toList();
    } on DioException catch (error) {
      print('Error response: ${error.response?.data} getPolicies');
      rethrow;
    }
  }

  Future<List<GetLgas200ResponseInner>> getLgas() async {
    final response = await ApiClient().api.getLgas();
    return response.data?.toList() ?? const [];
  }

  Future<List<Customer>> getCustomersByLoggedInUser() async {
    final response = await ApiClient().api.getCustomersByLoggedInUser();
    return response.data?.toList() ?? const [];
  }

  Future<List<Beneficiary>> getBeneficiariesByLoggedInUser() async {
    final response = await ApiClient().api.getBeneficiariesByLoggedInUser();
    return response.data?.toList() ?? const [];
  }

  Future<void> createBeneficiary(
    Beneficiary beneficiary,
    String beneficiaryId,
  ) async {
    await ApiClient().api.createBeneficiary(
      beneficiaryId: beneficiaryId,
      beneficiary: beneficiary,
    );
  }

  Future<List<dynamic>> getInsuredPersonByLoggedInUser() async {
    final response = await ApiClient().api.getInsuredPersonsByLoggedInUser();
    return response.data?.toList() ?? const [];
  }

  Future<InsuredPersonResponse?> getInsuredPersonById(String personId) async {
    final response = await ApiClient().api.getInsuredPersonById(
      personId: personId,
    );
    return response.data;
  }

  Future<Customer?> getCustomerById(String customerId) async {
    final response = await ApiClient().api.getCustomerById(
      customerId: customerId,
    );
    return response.data;
  }

  Future<GetSavePremiumQuote200Response?> getSavePremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getSavePremiumQuote(
        contribution: data['contribution'],
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<GetSavePremiumQuote200Response?> _getSavingsPremiumQuote(
    Future<Response<GetSavePremiumQuote200Response>> Function({
      required num contribution,
      required num premium,
      required String dob,
      required num term,
      required String frequency,
    })
    request,
    Map<String, dynamic> data,
  ) async {
    final response = await request(
      contribution: data['contribution'],
      premium: data['premium'],
      dob: data['dob'],
      term: data['term'],
      frequency: data['frequency'].toString(),
    );
    return response.data;
  }

  Future<GetSavePremiumQuote200Response?> getCouplePremiumQuote(
    Map<String, dynamic> data,
  ) => _getSavingsPremiumQuote(ApiClient().api.getCouplePremiumQuote, data);

  Future<GetSavePremiumQuote200Response?> getSalaryPremiumQuote(
    Map<String, dynamic> data,
  ) => _getSavingsPremiumQuote(ApiClient().api.getSalaryPremiumQuote, data);

  Future<GetSavePremiumQuote200Response?> getMyHeirsPremiumQuote(
    Map<String, dynamic> data,
  ) => _getSavingsPremiumQuote(ApiClient().api.getMyHeirsPremiumQuote, data);

  Future<GetSavePremiumQuote200Response?> getSaveExtraPremiumQuote(
    Map<String, dynamic> data,
  ) => _getSavingsPremiumQuote(ApiClient().api.getSaveExtraPremiumQuote, data);

  SaveSumAssuredQuote? _deserializeSaveSumAssuredQuote(Object? raw) {
    if (raw == null) return null;
    var payload = raw;
    if (payload is List) {
      if (payload.isEmpty) return null;
      payload = payload.first;
    }
    return ApiClient().serializers.deserialize(
      payload,
      specifiedType: const FullType(SaveSumAssuredQuote),
    ) as SaveSumAssuredQuote;
  }

  Future<SaveSumAssuredQuote?> _getSavingsProductSumAssuredQuote(
    String productPath,
    Map<String, dynamic> data,
  ) async {
    final amount = data['contribution'] ?? data['premium'];
    final path =
        '/$productPath/quote-assured/${SAVINGS_PRODUCTS_SUM_ASSURED}/$amount/${data['dob']}/${data['term']}/${data['frequency']}';
    final response = await ApiClient().dio.get<Object>(path);
    return _deserializeSaveSumAssuredQuote(response.data);
  }

  Future<SaveSumAssuredQuote?> getCoupleSumAssuredQuote(
    Map<String, dynamic> data,
  ) => _getSavingsProductSumAssuredQuote('couple', data);

  Future<SaveSumAssuredQuote?> getSalarySumAssuredQuote(
    Map<String, dynamic> data,
  ) => _getSavingsProductSumAssuredQuote('salary', data);

  Future<SaveSumAssuredQuote?> getMyHeirsSumAssuredQuote(
    Map<String, dynamic> data,
  ) => _getSavingsProductSumAssuredQuote('my-heirs', data);

  Future<SaveSumAssuredQuote?> getSaveExtraSumAssuredQuote(
    Map<String, dynamic> data,
  ) => _getSavingsProductSumAssuredQuote('save-extra', data);

  Future<LifeQuote?> getTermAssurancePremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getTermAssurancePremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getSurgeryCarePremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getSurgeryCarePremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getKeymanPremiumQuote(Map<String, dynamic> data) async {
    try {
      final response = await ApiClient().api.getKeymanPremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getSmartSchoolPremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getSmartSchoolPremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getHospitalCashBasicPremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getHospitalCashBasicPremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getHospitalCashIntermediatePremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api
          .getHospitalCashIntermediatePremiumQuote(
            premium: data['premium'],
            dob: data['dob'],
            term: data['term'],
            frequency: data['frequency'],
          );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  Future<LifeQuote?> getHospitalCashAdvancePremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getHospitalCashAdvancePremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: ${error}');
      rethrow;
    }
  }

  $DeathCover _buildDeathCover(Map<String, dynamic> body) {
    return $DeathCover(
      (builder) => builder
        ..personId = body['personId'].toString()
        ..sumAssured = body['sumAssured'] as num
        ..term = body['term'] as num
        ..frequency = DeathCoverFrequencyEnum.valueOf(
          body['frequency'].toString(),
        )
        ..businessType = body['businessType']?.toString()
        ..businessChannel = body['businessChannel']?.toString(),
    );
  }

  CustomerId _buildCustomerId(Map<String, dynamic> data) {
    return CustomerId(
      (builder) => builder
        ..customerId = data['body']?['customerId']?.toString()
        ..agentPhone = data['body']?['agentPhone']?.toString()
        ..referralId = data['body']?['referralId']?.toString(),
    );
  }

  CustomerId _customerIdFromGeneralData(Map<String, Object> data) {
    final raw = data['customer'] ?? data['customerId'];
    if (raw is CustomerId) return raw;
    return CustomerId((b) => b..customerId = raw?.toString());
  }

  AddLifeEntryToCoupleDocumentRequest _buildSavingsEntry(
    Map<String, dynamic> body,
  ) {
    return AddLifeEntryToCoupleDocumentRequest(
      (builder) => builder
        ..personId = body['personId'].toString()
        ..sumAssured = body['sumAssured'] as num
        ..term = body['term'] as num
        ..frequency = DeathCoverFrequencyEnum.valueOf(
          body['frequency'].toString(),
        )
        ..contribution = body['contribution'] as num?
        ..businessType = body['businessType']?.toString()
        ..businessChannel = body['businessChannel']?.toString(),
    );
  }

  PayEntry _buildPayEntry(Map<String, dynamic> payload) {
    return PayEntry(
      (builder) => builder
        ..method = PayEntryMethodEnum.valueOf(
          payload['body']?['method']?.toString() ?? '',
        )
        ..paymentCode = num.parse(payload['body']?['paymentCode'] ?? 0)
        ..referrer = payload['body']?['referrer']?.toString() ?? '',
    );
  }

  CustomerPersonalGenderEnum? _parseCustomerGender(dynamic raw) {
    final value = raw?.toString().toLowerCase().trim();
    if (value == 'male') return CustomerPersonalGenderEnum.male;
    if (value == 'female') return CustomerPersonalGenderEnum.female;
    return null;
  }

  Date? _parseCustomerDate(dynamic raw) {
    if (raw == null) return null;
    if (raw is Date) return raw;
    if (raw is List && raw.length >= 3) {
      final y = int.tryParse('${raw[0]}');
      final m = int.tryParse('${raw[1]}');
      final d = int.tryParse('${raw[2]}');
      if (y != null && m != null && d != null) return Date(y, m, d);
    }
    final text = raw.toString().trim();
    if (text.isEmpty) return null;
    final iso = DateTime.tryParse(text);
    if (iso != null) return Date(iso.year, iso.month, iso.day);
    final slashParts = text.split('/');
    if (slashParts.length == 3) {
      final d = int.tryParse(slashParts[0]);
      final m = int.tryParse(slashParts[1]);
      final y = int.tryParse(slashParts[2]);
      if (d != null && m != null && y != null) return Date(y, m, d);
    }
    return null;
  }

  CustomerPersonal _buildCustomerPersonal(Map<String, dynamic> data) {
    return $CustomerPersonal(
      (b) => b
        ..firstName = data['firstName']?.toString()
        ..lastName = data['lastName']?.toString()
        ..phone = data['phone']?.toString()
        ..occupation = data['occupation']?.toString()
        ..gender = _parseCustomerGender(data['gender'])
        ..dateOfBirth = _parseCustomerDate(data['dateOfBirth']),
    );
  }

  Future<void> createAccidentPerson(Map<String, dynamic> payload) async {
    final personId =
        payload['personId']?.toString() ??
        payload['body']?['personId']?.toString();
    if (personId == null || personId.isEmpty) {
      throw ArgumentError('personId is required for createAccidentPerson');
    }

    final customerRaw = payload['customer'];
    if (customerRaw is! Map) {
      throw ArgumentError('payload[\'customer\'] must be a Map');
    }
    final customerPersonal = _buildCustomerPersonal(
      Map<String, dynamic>.from(customerRaw),
    );
    try {
      final wire = ApiClient().serializers.serialize(
        customerPersonal,
        specifiedType: const FullType(CustomerPersonal),
      );
      final body = Map<String, dynamic>.from(wire as Map)
        ..['personId'] = personId;

      debugPrint('[createAccidentPerson] personId=$personId');
      debugPrint('[createAccidentPerson] payload: ${jsonEncode(body)}');

      await ApiClient().dio.post<void>(
        '/accident-person/$personId',
        data: body,
        options: Options(
          contentType: Headers.jsonContentType,
          validateStatus: (status) =>
              status != null && status >= 200 && status < 300,
        ),
      );
    } on DioException catch (error) {
      debugPrint(
        '[createAccidentPerson] HTTP ${error.response?.statusCode} '
        '${error.requestOptions.uri}',
      );
      debugPrint('[createAccidentPerson] response: ${error.response?.data}');
      debugPrint(
        '[createAccidentPerson] request: ${error.requestOptions.data}',
      );
      rethrow;
    }
  }

  Future<Response<void>> createlifeDocument(Map<String, Object> data) async {
    final body = data['body'] as Map<String, dynamic>;
    final documentId = data['documentId'].toString();
    final type = data['type']?.toString();
    final api = ApiClient().api;

    final savingsRequest = _buildSavingsEntry(body);
    if (type == SavingsPolicy['HEIRSSAVE']?['name']) {
      return api.createSaveDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }
    if (type == SavingsPolicy['HEIRSCOUPLE']?['name']) {
      return api.createCoupleDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }
    if (type == SavingsPolicy['HEIRSSALARY']?['name']) {
      return api.createSalaryDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }
    if (type == SavingsPolicy['HEIRSENTREPRENUER']?['name']) {
      return api.createEntrepreneurDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }
    if (type == SavingsPolicy['MYHEIRS']?['name']) {
      return api.createMyHeirsDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }
    if (type == SavingsPolicy['HEIRSSAVEEXTRA']?['name']) {
      return api.createSaveExtraDocument(
        documentId: documentId,
        addLifeEntryToCoupleDocumentRequest: savingsRequest,
      );
    }

    final deathCover = _buildDeathCover(body);

    if (type == ProtectionPolicy['HEIRSTERM']!['name']) {
      return api.createTermAssuranceDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HEIRSSMART']!['name']) {
      return api.createSmartSchoolDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HOSPITALBASIC']!['name']) {
      return api.createHospitalCashBasicDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HOSPITALINTERMEDIATE']!['name']) {
      return api.createHospitalCashIntermediateDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HOSPITALADVANCE']!['name']) {
      return api.createHospitalCashAdvanceDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HEIRSKEYMAN']!['name']) {
      return api.createKeymanDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HEIRSCREDITLIFE']!['name']) {
      return api.createCreditLifeDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HEIRSWHOLELIFE']!['name']) {
      return api.createWholeLifeDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }
    if (type == ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name']) {
      return api.createWholeLifeLimitedDocument(
        documentId: documentId,
        deathCover: deathCover,
      );
    }

    throw UnsupportedError('Unsupported policy type for document: $type');
  }

  Future<Response<void>> addCustomerToLifeDocument(Map<String, dynamic> data) {
    final documentId = data['documentId'].toString();
    final type = data['type']?.toString();
    final request = _buildCustomerId(data);
    final api = ApiClient().api;

    if (type == SavingsPolicy['HEIRSSAVE']?['name']) {
      return api.addCustomerToSaveDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == SavingsPolicy['HEIRSCOUPLE']?['name']) {
      return api.addCustomerToCoupleDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == SavingsPolicy['HEIRSSALARY']?['name']) {
      return api.addCustomerToSalaryDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == SavingsPolicy['HEIRSENTREPRENUER']?['name']) {
      return api.addCustomerToEntrepreneurDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == SavingsPolicy['MYHEIRS']?['name']) {
      return api.addCustomerToMyHeirsDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == SavingsPolicy['HEIRSSAVEEXTRA']?['name']) {
      return api.addCustomerToSaveExtraDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSTERM']!['name']) {
      return api.addCustomerToTermAssuranceDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSSMART']!['name']) {
      return api.addCustomerToSmartSchoolDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HOSPITALBASIC']!['name']) {
      return api.addCustomerToHospitalCashBasicDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HOSPITALINTERMEDIATE']!['name']) {
      return api.addCustomerToHospitalCashIntermediateDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HOSPITALADVANCE']!['name']) {
      return api.addCustomerToHospitalCashAdvanceDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSKEYMAN']!['name']) {
      return api.addCustomerToKeymanDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSCREDITLIFE']!['name']) {
      return api.addCustomerToCreditLifeDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSWHOLELIFE']!['name']) {
      return api.addCustomerToWholeLifeDocument(
        documentId: documentId,
        customerId: request,
      );
    }
    if (type == ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name']) {
      return api.addCustomerToWholeLifeLimitedDocument(
        documentId: documentId,
        customerId: request,
      );
    }

    throw UnsupportedError('Unsupported policy type for customer: $type');
  }

  Future<Response<void>?> addBeneficiaryToPolicy(
    Map<String, dynamic> shareDocument,
  ) async {
    final request = BeneficiaryShare(
      (builder) => builder
        ..beneficiaryId = shareDocument['beneficiaryId'].toString()
        ..personId = shareDocument['body']['personId'].toString()
        ..share = shareDocument['body']['share'] as num,
    );
    final documentId = shareDocument['documentId'].toString();
    final beneficiaryId = shareDocument['beneficiaryId'].toString();
    final policyType = shareDocument['policyType']?.toString();
    final api = ApiClient().api;
    try {
      if (policyType == SavingsPolicy['HEIRSSAVE']!['name']) {
        return api.addBeneficiaryShareToSaveDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == SavingsPolicy['HEIRSCOUPLE']!['name']) {
        print("nd");

        return api.addBeneficiaryShareToCoupleDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == SavingsPolicy['HEIRSSALARY']!['name']) {
        return api.addBeneficiaryShareToSalaryDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == SavingsPolicy['HEIRSENTREPRENUER']!['name']) {
        return api.addBeneficiaryShareToEntrepreneurDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == SavingsPolicy['MYHEIRS']!['name']) {
        return api.addBeneficiaryShareToMyHeirsDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == SavingsPolicy['HEIRSSAVEEXTRA']!['name']) {
        return api.addBeneficiaryShareToSaveExtraDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSTERM']!['name']) {
        return api.addBeneficiaryShareToTermAssuranceDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSSMART']!['name']) {
        return api.addBeneficiaryShareToSmartSchoolDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HOSPITALBASIC']!['name']) {
        return api.addBeneficiaryShareToHospitalCashBasicDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HOSPITALINTERMEDIATE']!['name']) {
        return api.addBeneficiaryShareToHospitalCashIntermediateDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HOSPITALADVANCE']!['name']) {
        return api.addBeneficiaryShareToHospitalCashAdvanceDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSKEYMAN']!['name']) {
        return api.addBeneficiaryShareToKeymanDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSCREDITLIFE']!['name']) {
        return api.addBeneficiaryShareToCreditLifeDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSWHOLELIFE']!['name']) {
        return api.addBeneficiaryShareToWholeLifeDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      if (policyType == ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name']) {
        return api.addBeneficiaryShareToWholeLifeLimitedDocument(
          beneficiaryId: beneficiaryId,
          documentId: documentId,
          beneficiaryShare: request,
        );
      }
      // return throw UnsupportedError(
      //    'Unsupported policy type for beneficiary share: $policyType',
      //  );
    } on DioException catch (e) {
      // print(e);
      debugPrint('URL: ${e.requestOptions.uri}');
      debugPrint('Method: ${e.requestOptions.method}');
      debugPrint('Status: ${e.response?.statusCode}');
      debugPrint('Response data: ${e.response?.data}');
      // debugPrint('Response headers: ${e.response?.headers}');
      rethrow;
    } catch (e) {
      print(e);
    }
  }

  Future<Response<void>> registerSavePayment(
    Map<String, dynamic> payload,
  ) async {
    print(payload['payId']);
    print('payId179');

    final response = await ApiClient().api.registerSavePayment(
      documentId: payload['documentId'].toString(),
      payId: payload['payId'].toString(),
      payEntry: PayEntry(
        (builder) => builder
          ..method = PayEntryMethodEnum.valueOf(
            payload['body']?['method']?.toString() ?? '',
          )
          ..paymentCode = num.parse(payload['body']?['paymentCode'] ?? 0)
          ..referrer = payload['body']?['referrer']?.toString() ?? '',
      ),
    );

    return response;
  }

  // Future<dynamic> payForSaveDocument(Map<String, dynamic> payload) async {
  //   final response = await ApiClient().api.payForSaveDocument(
  //     documentId: payload['documentId'].toString(),
  //     payId: payload['payId'].toString(),
  //   );
  //   return response.data;
  // }
  Future<dynamic> payForSaveDocument(Map<String, dynamic> payload) async {
    try {
      final response = await ApiClient().api.payForSaveDocument(
        documentId: payload['documentId'].toString(),
        payId: payload['payId'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      rethrow;
    }
  }

  Future<dynamic> payForDocument(Map<String, dynamic> payload) async {
    final documentId = payload['documentId'].toString();
    final payId = payload['payId'].toString();
    final type = payload['type']?.toString();
    final api = ApiClient().api;

    try {
      if (type == SavingsPolicy['HEIRSSAVE']!['name']) {
        return (await api.payForSaveDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
      else if (type == SavingsPolicy['HEIRSCOUPLE']!['name']) {
        return (await api.payForCoupleDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
      else if (type == SavingsPolicy['HEIRSSALARY']!['name']) {
        return (await api.payForSalaryDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
     else if (type == SavingsPolicy['HEIRSENTREPRENUER']!['name']) {
        return (await api.payForEntrepreneurDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
      else if (type == SavingsPolicy['MYHEIRS']!['name']) {
        return (await api.payForMyHeirsDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
      else if (type == SavingsPolicy['HEIRSSAVEEXTRA']!['name']) {
        return (await api.payForSaveExtraDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
      else if (type == MotorPolicy['HEIRSTHIRDPARTY']!['name']) {
        print("Mkmkmk ${MotorPolicy['HEIRSTHIRDPARTY']!['name']}");
        print("Mkmkmk${(await api.payFor3rdPartyDocument(
          documentId: documentId,
          payId: payId,
        ))}");
        return (await api.payFor3rdPartyDocument(
          documentId: documentId,
          payId: payId,
        )).data;
      }
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      rethrow;
    }

    throw UnsupportedError('Unsupported policy type for payment link: $type');
  }

  Future<Response<void>> registerLifePayment(
    Map<String, dynamic> payload,
  ) async {
    final documentId = payload['documentId'].toString();
    final payId = payload['payId'].toString();
    final type = payload['type']?.toString();
    final payEntry = _buildPayEntry(payload);
    final api = ApiClient().api;

    if (type == SavingsPolicy['HEIRSSAVE']!['name']) {
      return api.registerSavePayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    } else if (type == SavingsPolicy['HEIRSCOUPLE']!['name']) {
      return api.registerCouplePayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    } else if (type == SavingsPolicy['HEIRSSALARY']!['name']) {
      return api.registerSalaryPayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    } else if (type == SavingsPolicy['HEIRSENTREPRENUER']!['name']) {
      return api.registerEntrepreneurPayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    } else if (type == SavingsPolicy['MYHEIRS']!['name']) {
      return api.registerMyHeirsPayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    } else if (type == SavingsPolicy['HEIRSSAVEEXTRA']!['name']) {
      return api.registerSaveExtraPayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    }  else if(type == MotorPolicy['HEIRSTHIRDPARTY']!['name']){
      return api.register3rdPartyPayment(
        documentId: documentId,
        payId: payId,
        payEntry: payEntry,
      );
    }

    throw UnsupportedError('Unsupported policy type for payment: $type');
  }

  // Future<Response<void>> registerPayment(Map<String, dynamic> payload) async {
  // final response = await ApiClient().api.registerPayment(
  //   documentId: payload['documentId'].toString(),
  //   paymentRequest: PaymentRequest(
  //     (builder) => builder
  //       ..method = payload['body']?['method']?.toString()
  //       ..paymentCode = payload['body']?['paymentCode']?.toString()
  //       ..referrer = payload['body']?['referrer']?.toString(),
  //   ),
  // );
  // return response;
  // }
  Future<dynamic> paystackCallback(PaymentData PaymentData) async {
    try {
      final response = await ApiClient().api.paystackCallback(
        paystackId: PaymentData.reference!,
      );
      return response.data;
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      rethrow;
    }
  }

  Future<void> addCartItem(String cartId, policy) async {
    final response = await ApiClient().api.addItemToCart(
      cartId: cartId,
      cartItem: CartItem(
        (builder) => builder
          ..cartId = cartId
          ..payload.add(JsonObject(policy))
          ..resumePath = '/get-quote',
      ),
    );
    return response.data;
  }

  static String _ownerBuildingTypeWire(String raw) {
    final lower = raw.trim().toLowerCase();
    if (lower == 'multistorey' || lower == 'multi storey') {
      return 'multi-storey';
    }
    return lower;
  }

  Future<void> createRenter(dynamic data) async {
    try {
      final renterId =
          data['renterId']?.toString() ?? data['ownerId']?.toString() ?? '';
      final addressLine =
          data['addressLine']?.toString() ?? data['address']?.toString() ?? '';

      final particulars = $RenterParticulars(
        (b) => b
          ..renterId = renterId
          ..owner = data['owner'] as String?
          ..category = data['category'] as String?
          ..address.replace(
            Address(
              (a) => a
                ..address = addressLine
                ..city = ''
                ..state = ''
                ..country = ''
                ..street = ''
                ..streetNumber = ''
                ..postCode = '',
            ),
          ),
      );
      final response = await ApiClient().api.createRenter(
        renterId: renterId,
        renterParticulars: particulars,
      );
      return response.data;
    } on DioException catch (e) {
      // print(e);
      debugPrint('URL: ${e.requestOptions.uri}');
      debugPrint('Method: ${e.requestOptions.method}');
      debugPrint('Status: ${e.response?.statusCode}');
      debugPrint('Response data: ${e.response?.data}');
      // debugPrint('Response headers: ${e.response?.headers}');
      rethrow;
    }
  }

  Future<void> addOwner(dynamic data) async {
    try {
      final addressLine =
          data['addressLine']?.toString() ?? data['address']?.toString() ?? '';
      final valueRaw = data['value']?.toString().trim();
      final value = num.tryParse(valueRaw ?? '') ?? 0;

      final particulars = $OwnerParticulars(
        (b) => b
          ..ownerId = data['ownerId'] as String?
          ..owner = data['owner'] as String?
          ..buildingType = OwnerParticularsBuildingTypeEnum.valueOf(
            _ownerBuildingTypeWire(data['buildingType'] as String),
          )
          ..material = OwnerParticularsMaterialEnum.valueOf(
            (data['material'] as String).trim().toLowerCase(),
          )
          ..value = value
          ..address.replace(
            Address(
              (a) => a
                ..address = addressLine
                ..city = ''
                ..state = ''
                ..country = ''
                ..street = ''
                ..streetNumber = ''
                ..postCode = '',
            ),
          ),
      );
      final response = await ApiClient().api.addOwner(
        ownerId: data['ownerId'] as String,
        ownerParticulars: particulars,
      );
      return response.data;
    } on DioException catch (e) {
      // print(e);
      debugPrint('URL: ${e.requestOptions.uri}');
      debugPrint('Method: ${e.requestOptions.method}');
      debugPrint('Status: ${e.response?.statusCode}');
      debugPrint('Response data: ${e.response?.data}');
      // debugPrint('Response headers: ${e.response?.headers}');
      rethrow;
    }
  }

  Future<void> createMotorParticulars(
    String motorId,
    MotorParticulars motorParticulars,
  ) async {
    try {
      final wire = ApiClient().serializers.serialize(
        motorParticulars,
        specifiedType: const FullType(MotorParticulars),
      );
      final body = Map<String, dynamic>.from(wire as Map);
      final amount = body['motorValue'] ?? motorParticulars.motorValue;
      if (amount != null) {
        body['value'] = amount is num ? amount : num.tryParse('$amount');
      }

      debugPrint('[createMotorParticulars] motorId=$motorId');
      debugPrint('[createMotorParticulars] payload: ${jsonEncode(body)}');

      await ApiClient().dio.post<void>(
        '/motor/$motorId',
        data: body,
        options: Options(
          contentType: Headers.jsonContentType,
          validateStatus: (status) =>
              status != null && status >= 200 && status < 300,
        ),
      );
    } on DioException catch (error) {
      debugPrint(
        '[createMotorParticulars] HTTP ${error.response?.statusCode} '
        '${error.requestOptions.uri}',
      );
      debugPrint('[createMotorParticulars] response: ${error.response?.data}');
      debugPrint(
        '[createMotorParticulars] request: ${error.requestOptions.data}',
      );
      rethrow;
    } catch (error, stackTrace) {
      debugPrint('[createMotorParticulars] unexpected: $error');
      debugPrint('$stackTrace');
      rethrow;
    }
  }

  Future<MotorPremium?> get3rdPartyQuote(
    String motorClass,
    String motorType,
  ) async {
    final response = await ApiClient().api.get3rdPartyQuote(
      motorClass: motorClass,
      motorType: motorType,
    );
    return response.data;
  }

  getHeirs70kQuote() async {
    final response = await ApiClient().api.getHeirs70kQuote();
    return response.data;
  }

  getHeirs35kQuote() async {
    final response = await ApiClient().api.getHeirs35kQuote();
    return response.data;
  }

  getHeirs25kQuote() async {
    final response = await ApiClient().api.getHeirs25kQuote();
    return response.data;
  }

  getComprehensiveQuote(String motorClass, String motorValue) async {
    final response = await ApiClient().api.getComprehensiveQuote(
      motorClass: motorClass,
      motorValue: num.parse(motorValue),
    );
    return response.data;
  }

  getHerMotorQuote(String motorClass, String motorValue) async {
    try {
      print('motorClass ${motorClass}');
      print('motorValue ${motorValue}');

      final response = await ApiClient().api.getHerMotorQuote(
        motorClass: motorClass,
        motorValue: num.parse(motorValue),
      );
      return response.data;
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> verifyNIMC(String idNumber) async {
    try {
      final response = await Dio().post(
        'https://metamapapi-staging.heirsinsurancegroup.com/api/v1/verifyme/nin',
        data: {'idNumber': idNumber},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-API-Key': '543889cea306744557f0d4b8e8ffc778fc3dd5ee5acd46130215887dcfd90e60',
            // Check if they use X-API-Key
            // OR if they use standard Bearer token authorization, use line below instead:
            // 'Authorization': 'Bearer YOUR_HEIRS_INSURANCE_API_KEY',
          },
        ),
      );
      return response.data;
    } catch (e) {
      print('Error creating post: $e');
    }
  }

  Future<Map<String, dynamic>?> verifyPlateNo(String idNumber) async {
    try {
      print('Plate NO $idNumber');
      final response = await Dio().post(
        'https://metamapapi-staging.heirsinsurancegroup.com/api/v1/verifyme/premiumplate',
        data: {'idNumber': idNumber},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-API-Key': '543889cea306744557f0d4b8e8ffc778fc3dd5ee5acd46130215887dcfd90e60',
            // Check if they use X-API-Key
            // OR if they use standard Bearer token authorization, use line below instead:
            // 'Authorization': 'Bearer YOUR_HEIRS_INSURANCE_API_KEY',
          },
        ),
      );
      return response.data;
    } catch (e) {
      print('Error creating post: $e');
    }
  }

  Future<dynamic> verifyAccountDetails(
    String accountNumber,
    String bankCode,
  ) async {
    try {
      print('accountNumber ${accountNumber}');
      print('nipcode ${bankCode}');
      print('channel ${BusinessChannel.mobile.value}');

      final response = await Dio().post(
        'https://vas.heirsinsurance.com/nibssmandate/api/Mandate/verifyAccount',
        data: {
          'accountNo': accountNumber,
          'channel': BusinessChannel.mobile.value,
          'nipcode': bankCode,
        },

        // options: Options(
        //   headers: {
        //     'Content-Type': 'application/json',
        //     // 'X-API-Key': '543889cea306744557f0d4b8e8ffc778fc3dd5ee5acd46130215887dcfd90e60',
        //   },
        // ),
      );
      return response.data;
    } catch (e) {
      print('Error creating post: $e');
    }
  }

  Future<SaveSumAssuredQuote?> getSaveSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getSaveSumAssuredQuote(
        sumAssured: SAVINGS_PRODUCTS_SUM_ASSURED,
        savings: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } catch (error) {
      print('Error response: $error');
      rethrow;
    }
  }

  Future<LifePremium?> getTermAssuranceSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getTermAssuranceSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getSurgeryCareSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getSurgeryCareSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getHospitalCashBasicSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api
          .getHospitalCashBasicSumAssuredQuote(
            sumAssured: amount,
            dob: data['dob'],
            term: data['term'],
            frequency: data['frequency'].toString(),
          );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getHospitalCashAdvanceSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api
          .getHospitalCashAdvanceSumAssuredQuote(
            sumAssured: amount,
            dob: data['dob'],
            term: data['term'],
            frequency: data['frequency'].toString(),
          );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getHospitalCashIntermediateSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api
          .getHospitalCashIntermediateSumAssuredQuote(
            sumAssured: amount,
            dob: data['dob'],
            term: data['term'],
            frequency: data['frequency'].toString(),
          );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getSmartSchoolSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getSmartSchoolSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getCreditLifeSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getCreditLifeSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getWholeLifeAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getWholeLifeAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getWholeLifeLimitedAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getWholeLifeLimitedAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getMortgageSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getMortgageSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<LifeQuote?> getWholeLifePremiumQuote(Map<String, dynamic> data) async {
    try {
      final response = await ApiClient().api.getWholeLifePremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: $error');
      rethrow;
    }
  }

  Future<LifeQuote?> getWholeLifeLimitedPremiumQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getWholeLifeLimitedPremiumQuote(
        premium: data['premium'],
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'],
      );
      return response.data;
    } catch (error) {
      print('Error response: $error');
      rethrow;
    }
  }

  Future<SaveSumAssuredQuote?> getKeymanSumAssuredQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final amount = data['contribution'] ?? data['premium'];
      final response = await ApiClient().api.getKeymanSumAssuredQuote(
        sumAssured: amount,
        dob: data['dob'],
        term: data['term'],
        frequency: data['frequency'].toString(),
      );
      return response.data;
    } on DioException catch (error) {
      print(error);
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getBusinessProtectQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getBusinessProtectQuote(
        itemsValue: int.parse(data['stationaryValue']!),
      );
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getBusinessProtectQuotePlus(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getBusinessProtectPlusQuote(
        itemsValue: int.parse(data['stationaryValue']!),
      );
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getHomeProtect() async {
    try {
      final response = await ApiClient().api.getHomeProtectQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getHomeProtectPlus(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getHomeProtectPlusQuote(
        stationaryValue: double.parse(data['stationaryValue']),
        mobileValue: double.parse(data['mobileValue']),
        alternativeValue: 0,
        value: double.parse(data['value']),
      );
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  checkIfUserHasSelectedProfile() {}

  loadSelectedProfile() {}

  Future<GetBusinessProtectQuote200Response?> getTenantProtectBronzeQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getTenantProtectBronzeQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getTenantProtectSilverQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getTenantProtectSilverQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getTenantProtectGoldQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getTenantProtectGoldQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getTenantProtectPlusQuote(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await ApiClient().api.getTenantProtectPlusQuote(
        stationaryValue: double.parse(data['stationaryValue']),
        mobileValue: double.parse(data['mobileValue']),
        alternativeValue: 0,
      );
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> sendBuyActionToCustomerExperience(
    Map<String, dynamic> data,
  ) async {
    try {
      await ApiClient().api.sendBuyActionToCustomerExperience(
        company: data['company'].toString(),
        phoneNumber: data['phoneNumber'].toString(),
        sendBuyActionToCustomerExperienceRequest:
            SendBuyActionToCustomerExperienceRequest(
              (b) => b
                ..policyInfo = data['policyInfo']?.toString()
                ..inquiryType = data['inquiryType']?.toString(),
            ),
      );
    } on DioException catch (error) {
      print('Error response: ${error.response?.data}');
      print('URL: ${error.requestOptions.uri}');
      rethrow;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getPersonalAccidentBronzeQuote(
    details,
  ) async {
    try {
      final response = await ApiClient().api.getAccidentBronzeQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getAccidentSilverQuote(
    details,
  ) async {
    try {
      final response = await ApiClient().api.getAccidentSilverQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getAccidentGoldQuote(
    details,
  ) async {
    try {
      final response = await ApiClient().api.getAccidentGoldQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<GetBusinessProtectQuote200Response?> getAccidentPlatinumQuote(
    details,
  ) async {
    try {
      final response = await ApiClient().api.getAccidentPlatinumQuote();
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Create3rdPartyDocumentRequest _buildMotorDocumentRequest(
    Map<String, dynamic> body,
  ) {
    return Create3rdPartyDocumentRequest(
      (b) => b
        ..businessType = body['businessType']?.toString()
        ..businessChannel = body['businessChannel']?.toString(),
    );
  }

  Future<Response<void>> createComprehensiveDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createComprehensiveDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> create3rdPartyDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.create3rdPartyDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHomeProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHomeProtectDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createTenantProtectBronzeDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createTenantProtectBronzeDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createTenantProtectSilverDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createTenantProtectSilverDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createTenantProtectGoldDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createTenantProtectGoldDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createTenantProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createTenantProtectPlusDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createBusinessProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createBusinessProtectDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createAccidentBronzeDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createAccidentBronzeDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createAccidentSilverDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createAccidentSilverDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createAccidentGoldDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createAccidentGoldDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createAccidentPlatinumDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createAccidentPlatinumDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createBusinessProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createBusinessProtectPlusDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHomeProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHomeProtectPlusDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHerMotorDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHerMotorDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHeirs25kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHeirs25kDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHeirs35kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHeirs35kDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> createHeirs70kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final body = Map<String, dynamic>.from(data['body'] as Map);
    return ApiClient().api.createHeirs70kDocument(
      documentId: documentId,
      create3rdPartyDocumentRequest: _buildMotorDocumentRequest(body),
    );
  }

  Future<Response<void>> addMotorTo3rdPartyDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorTo3rdPartyDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addMotorToHerMotorDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorToHerMotorDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addMotorToHeirs25kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorToHeirs25kDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addMotorToHeirs70kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorToHeirs70kDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addMotorToHeirs35kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorToHeirs35kDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addMotorToComprehensiveDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final motorId = data['motorId'].toString();
    return ApiClient().api.addMotorToComprehensiveDocument(
      documentId: documentId,
      motorId: motorId,
    );
  }

  Future<Response<void>> addCustomerToComprehensiveDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToComprehensiveDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerTo3rdPartyDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerTo3rdPartyDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHerMotorDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHerMotorDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHeirs25kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHeirs25kDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHeirs35kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHeirs35kDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHeirs70kDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHeirs70kDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addHouseToHomeProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final ownerId = data['xId'].toString();
    return ApiClient().api.addHouseToHomeProtectDocument(
      documentId: documentId,
      ownerId: ownerId,
    );
  }

  Future<Response<void>> addHouseToHomeProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final ownerId = data['xId'].toString();
    return ApiClient().api.addHouseToHomeProtectPlusDocument(
      documentId: documentId,
      ownerId: ownerId,
    );
  }

  Future<Response<void>> addHouseToTenantProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addHouseToTenantProtectPlusDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addHouseToTenantProtectGoldDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addHouseToTenantProtectGoldDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addHouseToTenantProtectSilverDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addHouseToTenantProtectSilverDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addHouseToTenantProtectBronzeDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addHouseToTenantProtectBronzeDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addShopToBusinessProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addShopToBusinessProtectDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addShopToBusinessProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final renterId = data['xId'].toString();
    return ApiClient().api.addShopToBusinessProtectPlusDocument(
      documentId: documentId,
      renterId: renterId,
    );
  }

  Future<Response<void>> addCustomerToTenantProtectBronzeDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToTenantProtectBronzeDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToTenantProtectSilverDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToTenantProtectSilverDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToTenantProtectGoldDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToTenantProtectGoldDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToTenantProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToTenantProtectPlusDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToBusinessProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToBusinessProtectDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToBusinessProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToBusinessProtectPlusDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHomeProtectPlusDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHomeProtectPlusDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>> addCustomerToHomeProtectDocument(
    Map<String, Object> data,
  ) async {
    final documentId = data['documentId'].toString();
    final customerId = _customerIdFromGeneralData(data);
    return ApiClient().api.addCustomerToHomeProtectDocument(
      documentId: documentId,
      customerId: customerId,
    );
  }

  Future<Response<void>?> addMobileItemToOwner({
    required String ownerId,
    required BuildingItem item,
  }) async {
    try {
      final mobileItem = MobileItem(
        (b) => b
          ..name = item.itemName
          ..value = item.itemValue
          ..qty = int.tryParse(item.itemsQty),
      );
      print(item.itemsQty);
      return await ApiClient().api.addMobileItemToOwner(
        ownerId: ownerId,
        itemId: item.itemId,
        mobileItem: mobileItem,
      );
    } on DioException catch (e) {
      debugPrint('addMobileItemToOwner: ${e.response?.data}');
      rethrow;
    }
  }

  Future<Response<void>?> addStationaryItemToOwner({
    required String ownerId,
    required BuildingItem item,
  }) async {
    try {
      final houseItem = HouseItem(
        (b) => b
          ..name = item.itemName
          ..value = item.itemValue
          ..qty = int.tryParse(item.itemsQty),
      );
      return await ApiClient().api.addItemToOwner(
        ownerId: ownerId,
        itemId: item.itemId,
        houseItem: houseItem,
      );
    } on DioException catch (e) {
      debugPrint('addItemToOwner: ${e.response?.data}');
      rethrow;
    }
  }

  Future<Response<void>?> addPersonToAccidentBronzeDocument(
    Map<String, String> data,
  ) async {
    try {
      return ApiClient().api.addPersonToAccidentBronzeDocument(
        documentId: data['documentId']!,
        accidentId: data['accidentId']!,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Response<void>?> addPersonToAccidentSilverDocument(
    Map<String, String> data,
  ) async {
    try {
      return ApiClient().api.addPersonToAccidentSilverDocument(
        documentId: data['documentId']!,
        accidentId: data['accidentId']!,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Response<void>?> addPersonToAccidentGoldDocument(
    Map<String, String> data,
  ) async {
    try {
      return ApiClient().api.addPersonToAccidentGoldDocument(
        documentId: data['documentId']!,
        accidentId: data['accidentId']!,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Response<void>?> addPersonToAccidentPlatinumDocument(
    Map<String, String> data,
  ) async {
    try {
      return ApiClient().api.addPersonToAccidentPlatinumDocument(
        documentId: data['documentId']!,
        accidentId: data['accidentId']!,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Response<GetPaymentStatus200Response>?> getPaymentStatus(
    String payId,
  ) async {
    try {
      return await ApiClient().api.getPaymentStatus(payId: payId);
    } on DioException catch (e) {
      debugPrint('getPaymentStatus: ${e.response?.data}');
      rethrow;
    }
  }
}
