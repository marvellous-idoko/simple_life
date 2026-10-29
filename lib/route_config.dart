import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/screens/beneficiaries_screen.dart';
import 'package:simple_life/screens/home_screen.dart';
import 'package:simple_life/screens/life_product_details_screen.dart';
import 'package:simple_life/screens/life_product_form.dart';
import 'package:simple_life/screens/life_products_screen.dart';
import 'package:simple_life/screens/login_screen.dart';
import 'package:simple_life/screens/my_policies_screen.dart';
import 'package:simple_life/screens/select_profile_screen.dart';
import 'package:simple_life/screens/sign_in_with_password_screen.dart';
import 'package:simple_life/screens/signup_screen.dart';
import 'package:simple_life/screens/start_screen.dart';
import 'package:simple_life/widgets/app_bottom_bar.dart';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const StartScreen()),
    // GoRoute(path: '/', builder: (context, state) => const  LifeProductsScreen()),

    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: AppRoutes.signInWithPassword,
      builder: (context, state) => SignInWithPasswordScreen(),
    ),
    GoRoute(
      path: AppRoutes.selectProfile,
      builder: (context, state) => const SelectProfileScreen(),
    ),
    GoRoute(
      path: AppRoutes.lifeProducts,
      builder: (context, state) => const LifeProductsScreen(),
    ),
    GoRoute(
      path: AppRoutes.lifeProductForm,
      builder: (context, state) =>
          LifeProductForm(productCode: state.pathParameters['code'] ?? ''),
    ),
    GoRoute(
      path: AppRoutes.beneficiaries,
      builder: (context, state) => const BeneficiariesScreen(),
    ),
    GoRoute(
      path: AppRoutes.lifeProductDetails,
      builder: (context, state) => LifeProductDetailsScreen(
        productCode: state.pathParameters['code'] ?? '',
      ),
    ),
    // GoRoute(
    //   path: AppRoutes.profile,
    //   builder: (context, state) => const ProfileScreen(),
    //   routes: [
    //     // Child Route (Omit the leading slash)
    //     GoRoute(
    //       path: 'edit', // Resolves to /profile/edit
    //       builder: (context, state) => const EditProfileScreen(),
    //     ),
    //   ],
    // ),
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
      ],
    ),
  ],
);
