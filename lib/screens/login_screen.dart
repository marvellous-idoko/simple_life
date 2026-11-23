import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const _brandRed = AppColors.primary;
  static const _headingColor = AppColors.textColor;
  static const _secondaryColor = AppColors.mutedColor;
  static const _fieldBorder = Color(0xFFE5E7EB);
  static const _hintColor = Color(0xFFB8BBC2);
  static const _disabledFill = Color(0xFFF5F5F6);
  static const _disabledLabel = Color(0xFFC8CAD0);

  final _identityController = TextEditingController();

  bool get _canSend => _identityController.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    _identityController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _identityController.dispose();
    super.dispose();
  }

  void _goBack() {
    if (context.canPop()) {
      context.pop();
      return;
    }
    context.go('/');
  }

  void _isPasswordLogin() async {
    context.read<GeneralBloc>().add(
      UpdateGeneralMessage({'identity': _identityController.text.trim()}),
    );
    final response = await GeneralRepository().isPasswordLogin(
      _identityController.text,
    );
    if (!mounted) return;

    if (response?.password == true) {
      context.go(
        AppRoutes.signInWithPassword,
        extra: _identityController.text.trim(),
      );
      return;
    }

    if (response?.exists == true) {
      context.go(
        AppRoutes.signInWithOtp,
        extra: _identityController.text.trim(),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('No account was found for that identity')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 414),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(36, 4, 36, 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                onPressed: _goBack,
                                padding: EdgeInsets.zero,
                                visualDensity: VisualDensity.compact,
                                constraints: const BoxConstraints(
                                  minWidth: 32,
                                  minHeight: 32,
                                ),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: _headingColor,
                                  size: 14,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: Image.asset(
                                'assets/images/login_illustration.png',
                                width: 176,
                                height: 266,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _headingColor,
                                fontSize: 28,
                                height: 1.2,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.45,
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text(
                              'Sign in to get quote',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _secondaryColor,
                                fontSize: 16,
                                height: 1.25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 45),
                            const Text(
                              'Email/Phone Number',
                              style: TextStyle(
                                color: _headingColor,
                                fontSize: 14,
                                height: 1.25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 50,
                              child: TextField(
                                controller: _identityController,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.done,
                                onSubmitted: (_) {
                                  if (_canSend) _isPasswordLogin();
                                },
                                style: const TextStyle(
                                  color: _headingColor,
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Enter email/phone number',
                                  hintStyle: const TextStyle(
                                    color: _hintColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.phone_outlined,
                                    color: _hintColor,
                                    size: 20,
                                  ),
                                  prefixIconConstraints: const BoxConstraints(
                                    minWidth: 46,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 14,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: _fieldBorder,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: _brandRed,
                                      width: 1.2,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: _brandRed,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 14),
                            SizedBox(
                              height: 50,
                              child: FilledButton(
                                onPressed: _canSend ? _isPasswordLogin : null,
                                style: FilledButton.styleFrom(
                                  backgroundColor: _brandRed,
                                  disabledBackgroundColor: _disabledFill,
                                  foregroundColor: Colors.white,
                                  disabledForegroundColor: _disabledLabel,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Proceed',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    color: _secondaryColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => context.go('/signup'),
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 3,
                                    ),
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: _brandRed,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const SizedBox(height: 24),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Terms',
                                  style: TextStyle(
                                    color: _brandRed,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    color: _brandRed,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '2025 Copyright All Rights reserved',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _secondaryColor,
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
