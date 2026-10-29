import 'package:dio/dio.dart' show Response;
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:uuid/uuid.dart';

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

  Future<AuthToken?> logUserIn(String identity, String password) async {
    final response = await ApiClient().api.logUserIn(
      logUserInRequest: LogUserInRequest(
        (b) => b
          ..identity = identity
          ..password = password,
      ),
    );
    return response.data;
  }

  Future<GetLoggedInUser200Response?> getLoggedInUser() async {
    final response = await ApiClient().api.getLoggedInUser();
    return response.data;
  }

  Future<List<PolicyInfo>?> getPolicies() async {
    final response = await ApiClient().api.getPolicies();
    return response.data?.toList();
  }

  Future<List<Customer>> getCustomersByLoggedInUser() async {
    final response = await ApiClient().api.getCustomersByLoggedInUser();
    return response.data?.toList() ?? const [];
  }

  Future<List<Beneficiary>> getBeneficiariesByLoggedInUser() async {
    final response = await ApiClient().api.getBeneficiariesByLoggedInUser();
    return response.data?.toList() ?? const [];
  }

  Future<void> createBeneficiary(Beneficiary beneficiary) async {
    await ApiClient().api.createBeneficiary(
      beneficiaryId: const Uuid().v4(),
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
    final response = await ApiClient().api.getSavePremiumQuote(
      contribution: data['contribution'],
      premium: data['premium'],
      dob: data['dob'],
      term: data['term'],
      frequency: data['frequency'],
    );
    return response.data;
  }

  Future<Future<Response<void>>> createlifeDocument(
    Map<String, Object> data,
  ) async {
    // const data = {
    //     'documentId': 'documentId',
    //     'body': {
    //       'personId': '123',
    //       'sumAssured': 100000,
    //       'frequency': 'monthly',
    //       'term': 10,
    //       'contribution': 1000,
    //     }
    //   };
    final body = data['body'] as Map<String, dynamic>;
    final request = AddLifeEntryToCoupleDocumentRequest(
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
    await ApiClient().api.createSaveDocument(
      documentId: data['documentId'].toString(),
      addLifeEntryToCoupleDocumentRequest: request,
    );
    if (SavingsPolicy['HEIRSSAVE']?['name'] == data['type']) {
      return ApiClient().api.createSaveDocument(
        documentId: data['documentId'].toString(),
        addLifeEntryToCoupleDocumentRequest: request,
      );
    } else {
      return ApiClient().api.createSaveDocument(
        documentId: data['documentId'].toString(),
        addLifeEntryToCoupleDocumentRequest: request,
      );
    }

    // Future<GetSavePremiumQuote200Response?> getSa(data) async {
    //   final response = await ApiClient().api.getSaveSumAssuredQuote( contribution: data.contribution, premium: data.premium, dob: data.dob, term: data.term, frequency: data.frequency);
    //   return response.data;
    // }
  }

  Future<Response<void>> addCustomerToLifeDocument(Map<String, dynamic> data) {
    final request = CustomerId(
      (builder) => builder
        ..customerId = data['body']?['customerId']?.toString()
        ..agentPhone = data['body']?['agentPhone']?.toString()
        ..referralId = data['body']?['referralId']?.toString(),
    );

    if (SavingsPolicy['HEIRSSAVE']?['name'] == data['type']) {
      return ApiClient().api.addCustomerToSaveDocument(
        documentId: data['documentId'].toString(),
        customerId: request,
      );
    } else {
      return ApiClient().api.addCustomerToSaveDocument(
        documentId: data['documentId'].toString(),
        customerId: request,
      );
    }
  }
}
