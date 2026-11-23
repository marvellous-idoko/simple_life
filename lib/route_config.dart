import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/navigation/app_page_transitions.dart';
import 'package:simple_life/screens/beneficiaries_screen.dart';
import 'package:simple_life/screens/general-policy-summary.dart';
import 'package:simple_life/screens/get_quote_product_details_screen.dart';
import 'package:simple_life/screens/get_quote_screen.dart';
import 'package:simple_life/screens/home_owner_policy_quote_form.dart';
import 'package:simple_life/screens/home_screen.dart';
import 'package:simple_life/screens/life-policy-summary.dart';
import 'package:simple_life/screens/life_product_details_screen.dart';
import 'package:simple_life/screens/life_product_form.dart';
import 'package:simple_life/screens/life_products_screen.dart';
import 'package:simple_life/screens/login_screen.dart';
import 'package:simple_life/screens/motor-policy-summary.dart';
import 'package:simple_life/screens/personal_accident_policy_summary.dart';
import 'package:simple_life/screens/motor_policy_quote_form.dart';
import 'package:simple_life/screens/register_general_protection_screen.dart';
import 'package:simple_life/screens/register_motor_screen.dart';
import 'package:simple_life/screens/my_policies_screen.dart';
import 'package:simple_life/screens/profile_screen.dart';
import 'package:simple_life/screens/select_profile_screen.dart';
import 'package:simple_life/screens/sign_in_with_otp_screen.dart';
import 'package:simple_life/screens/sign_in_with_password_screen.dart';
import 'package:simple_life/screens/signup_screen.dart';
import 'package:simple_life/screens/start_screen.dart';
import 'package:simple_life/widgets/app_bottom_bar.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRoutes = GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: [
    slideGoRoute(
      path: '/',
      child: (context, state) => const StartScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.getQuote,
      child: (context, state) => const GetQuoteScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.login,
      child: (context, state) => const LoginScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.signup,
      child: (context, state) => const SignupScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.signInWithPassword,
      child: (context, state) => SignInWithPasswordScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.signInWithOtp,
      child: (context, state) =>
          SignInWithOtpScreen(identity: state.extra as String? ?? ''),
    ),
    slideGoRoute(
      path: AppRoutes.selectProfile,
      child: (context, state) => const SelectProfileScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.lifeProducts,
      child: (context, state) => const LifeProductsScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.lifeProductForm,
      child: (context, state) =>
          LifeProductForm(productCode: state.pathParameters['code'] ?? ''),
    ),
    slideGoRoute(
      path: AppRoutes.beneficiaries,
      child: (context, state) => const BeneficiariesScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.lifeProductDetails,
      child: (context, state) => LifeProductDetailsScreen(
        productCode: state.pathParameters['code'] ?? '',
      ),
    ),
    slideGoRoute(
      path: AppRoutes.lifePolicySummary,
      child: (context, state) => const LifePolicySummary(),
    ),
    slideGoRoute(
      path: AppRoutes.motorPolicySummary,
      child: (context, state) => const MotorPolicySummary(),
    ),
    slideGoRoute(
      path: AppRoutes.generalPolicySummary,
      child: (context, state) => const GeneralPolicySummary(),
    ),
    slideGoRoute(
      path: AppRoutes.personalAccidentSummary,
      child: (context, state) => const PersonalAccidentPolicySummary(),
    ),
    slideGoRoute(
      path: AppRoutes.motorPolicyForm,
      child: (context, state) => const MotorPolicyQuote(),
    ),
    slideGoRoute(
      path: AppRoutes.registerMotor,
      child: (context, state) => const RegisterMotorScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.registerProtectee,
      child: (context, state) => const RegisterProtecteeScreen(),
    ),
    slideGoRoute(
      path: AppRoutes.HomeOwnerPolicyForm,
      child: (context, state) => const HomeOwnerPolicyQuote(),
    ),
    GoRoute(
      path: AppRoutes.getQuoteProductDetails,
      pageBuilder: (context, state) => slideHorizontalPage(
        key: state.pageKey,
        child: GetQuoteProductDetailsScreen(
          id: state.pathParameters['id'] ?? '',
          productIcon:
              state.extra as String? ?? 'assets/images/car_insurance.png',
        ),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: Center(
          heightFactor: 1,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: AppBottomBar(
              currentIndex: navigationShell.currentIndex,
              onTap: (index) {
                if (index >= navigationShell.route.branches.length) return;
                navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                );
              },
            ),
          ),
        ),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.myPolicies,
              builder: (context, state) => const MyPoliciesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.buy,
              builder: (context, state) => const _ShellPlaceholder(
                icon: Icons.add_shopping_cart_outlined,
                title: 'Choose a product to buy',
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.wallet,
              builder: (context, state) => const _ShellPlaceholder(
                icon: Icons.account_balance_wallet_outlined,
                title: 'Wallet',
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class _ShellPlaceholder extends StatelessWidget {
  const _ShellPlaceholder({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFD),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: const Color(0xFFB5B9C1)),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF515258),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}