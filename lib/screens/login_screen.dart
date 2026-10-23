import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const _brandRed = Color(0xFFFF0A0A);
  static const _headingColor = Color(0xFF55565A);
  static const _secondaryColor = Color(0xFF8B909A);
  static const _fieldBorder = Color(0xFFE4E6EA);
  static const _hintColor = Color(0xFFB7BCC4);
  static const _disabledFill = Color(0xFFF3F4F6);
  static const _disabledLabel = Color(0xFFC5C8CE);

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
      UpdateGeneralMessage({
        'identity': _identityController.text.trim()
      }),
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

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password login is not available')),
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
                    constraints: const BoxConstraints(maxWidth: 520),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(22, 4, 22, 16),
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
                                  minWidth: 36,
                                  minHeight: 36,
                                ),
                                icon: const Icon(
                                  Icons.chevron_left,
                                  color: _headingColor,
                                  size: 30,
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),
                            const Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _headingColor,
                                fontSize: 32,
                                height: 1.1,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Sign In to get quote',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _secondaryColor,
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 36),
                            const Text(
                              'Email/Phone Number',
                              style: TextStyle(
                                color: _headingColor,
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: _identityController,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              style: const TextStyle(
                                color: _headingColor,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Enter email/phone number',
                                hintStyle: const TextStyle(
                                  color: _hintColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28),
                                  borderSide: const BorderSide(
                                    color: _fieldBorder,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28),
                                  borderSide: const BorderSide(
                                    color: _brandRed,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 52,
                              child: FilledButton(
                                onPressed: _canSend
                                    ? () {
                                        _isPasswordLogin();
                                      }
                                    : null,
                                style: FilledButton.styleFrom(
                                  backgroundColor: _brandRed,
                                  disabledBackgroundColor: _disabledFill,
                                  foregroundColor: Colors.white,
                                  disabledForegroundColor: _disabledLabel,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                                child: const Text(
                                  'Proceed',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    color: _headingColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => context.go('/signup'),
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                      color: _brandRed,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 18),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    color: _brandRed,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '2026 Copyright All Rights reserved',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _secondaryColor,
                                fontSize: 14,
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
