abstract class AppRoutes {
  static const String start = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String signInWithPassword = '/sign-in-with-password';
  static const String signInWithOtp = '/sign-in-with-otp';
  static const String selectProfile = '/select-profile';
  static const String myPolicies = '/my-policies';
  static const String makeClaim = '/make-a-claim';
  static const String myClaims = '/my-claims';
  static const String payPremium = '/pay-premium';
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String lifeProducts = '/life-products';
  static const String lifeProductForm = '/life-products/:code/apply';
  static const String lifeProductDetails = '/life-products/:code';
  static const String generalProducts = '/general-products';
  static const String beneficiaries = '/beneficiaries';
  static const String dashboard = '/dashboard';

  static String lifeProductDetailsPath(String code) =>
      '/life-products/${Uri.encodeComponent(code)}';

  static String lifeProductFormPath(String code) =>
      '/life-products/${Uri.encodeComponent(code)}/apply';

  /// Helper method to format path parameters dynamically
  static String detailsPath(String id) => '/details/$id';
}
