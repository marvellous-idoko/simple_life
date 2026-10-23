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

  static const String dashboard = '/dashboard';

  /// Helper method to format path parameters dynamically
  static String detailsPath(String id) => '/details/$id';
}
