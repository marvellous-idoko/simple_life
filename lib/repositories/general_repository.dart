import 'package:openapi/openapi.dart';

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

  Future<List<Customer>> getCustomerProfiles() async {
    final response = await ApiClient().api.getCustomersByLoggedInUser();
    return response.data?.toList() ?? const [];
  }
}
