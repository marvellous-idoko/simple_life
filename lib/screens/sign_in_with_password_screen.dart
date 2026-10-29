import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/Bloc__state/general_state.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/services/auth_storage.dart';
import 'package:simple_life/services/general_storage.dart';
import 'package:simple_life/utils/utils.dart';

class SignInWithPasswordScreen extends StatefulWidget {
  const SignInWithPasswordScreen({super.key, this.identity = ''});

  final String identity;

  @override
  State<SignInWithPasswordScreen> createState() =>
      _SignInWithPasswordScreenState();
}

class _SignInWithPasswordScreenState extends State<SignInWithPasswordScreen> {
  static const _brandRed = Color(0xFFFF0A0A);
  static const _textColor = Color(0xFF55565A);
  static const _secondaryColor = Color(0xFF737B8C);
  static const _borderColor = Color(0xFFD9DCE1);

  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  bool get _canVerify =>
      _passwordController.text.isNotEmpty &&
      widget.identity.trim().isNotEmpty &&
      !_isLoading;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_refresh);
  }

  @override
  void dispose() {
    _passwordController
      ..removeListener(_refresh)
      ..dispose();
    super.dispose();
  }

  void _refresh() => setState(() {});

  void _goBack() {
    if (context.canPop()) {
      context.pop();
      return;
    }
    context.go('/login');
  }

  Future<void> _verify() async {
    setState(() => _isLoading = true);

    try {
      final state = context.read<GeneralBloc>().state;

      final response = await GeneralRepository().logUserIn(
        state.message['identity'] as String,
        _passwordController.text.trim(),
      );

      if (response == null) {
        throw Exception('Unable to verify your password');
      }

      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Password verified')));
      print('response 81');

      AuthStorageService().saveToken(
        jsonEncode({
          'token': response.token,
          'expiry': response.expiry,
          'refreshToken': response.refreshToken,
          'refreshExpiry': response.refreshExpiry,
        }),
      );

      if (await isExpired('user')) {
        var cUser = await GeneralRepository().getLoggedInUser();
        state.message['user'] = {"userId":cUser!.userId!,"name":cUser!.name!, "email":cUser.email!, "phone":cUser.phone!};
        if (state.message['user'] == null) {
          throw Exception('Unable to get user');
        } else {
          state.message['userLastUpdated'] = DateTime.now().toIso8601String();
        }
      }

      print('state.message 103');
      print(state.message);
      print('state.message 103');
      if (await isExpired('policies')) {
        var cPolicies = await GeneralRepository().getPolicies();
        if (cPolicies == null) {
          throw Exception('Unable to get policies');
        } else {
          var tempPolicies = [];
          for (var policy in cPolicies) {

            tempPolicies.add({
              'policyName': policy.policyName,
              'policyStatus': policy.policyStatus,
              'policyHolder': policy.policyHolder,
              'policyStartDate': policy.policyStartDate,
              'policyExpiryDate': policy.policyExpiryDate,
              'policyNumber': policy.policyNumber,
              'paymentCycle': policy.paymentCycle,
              'premium': policy.premium,
              'issueDate': policy.issueDate,
              // 'sumInsured': policy!.sumInsured,
              'id': policy.id,
              'underwritingUrl': policy.underwritingUrl,
              'company': policy.company,
              // 'currency': policy.currency,
              "exchangeRate": policy.exchangeRate,
            });
          }
          state.message['policies'] = tempPolicies;
          state.message['policiesLastUpdated'] = DateTime.now().toIso8601String();
        }
      }

      print('state.message 90');
      print(state.message);
      print('state.message 90');

      
      // print(state.message['policies']);
      final updated = {...state.message, 'policies': state.message['policies']};
      context.read<GeneralBloc>().add(UpdateGeneralMessage(updated));
      GeneralStorageService().saveMessage(state.message);
      context.go('/home');
    } catch (error) {
      print('response 79');
      print(error);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unable to verify your password')),
      );
    } finally {
      print('response 84');
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.viewInsetsOf(context).bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 520),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: _goBack,
                                  padding: EdgeInsets.zero,
                                  visualDensity: VisualDensity.compact,
                                  constraints: const BoxConstraints(
                                    minWidth: 30,
                                    minHeight: 40,
                                  ),
                                  icon: const Icon(
                                    Icons.chevron_left,
                                    color: _textColor,
                                    size: 34,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Enter your Password',
                                        style: TextStyle(
                                          color: _textColor,
                                          fontSize: 32,
                                          height: 1.15,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.6,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Enter your password to sign in',
                                        style: TextStyle(
                                          color: _secondaryColor,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 42),
                            const Text(
                              'Password',
                              style: TextStyle(
                                color: _secondaryColor,
                                fontSize: 18,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: _passwordController,
                              obscureText: _obscurePassword,
                              textInputAction: TextInputAction.done,
                              onSubmitted: (_) {
                                // if (_canVerify)
                                _verify();
                              },
                              style: const TextStyle(
                                color: _secondaryColor,
                                fontSize: 18,
                                letterSpacing: 2,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 20,
                                ),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Icon(
                                    Icons.lock_outline,
                                    color: _textColor,
                                    size: 24,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 52,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => setState(
                                    () => _obscurePassword = !_obscurePassword,
                                  ),
                                  icon: Icon(
                                    _obscurePassword
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    color: _secondaryColor,
                                    size: 23,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: _borderColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: _brandRed,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            const SizedBox(height: 48),
                            SizedBox(
                              height: 60,
                              child: FilledButton(
                                onPressed: () {
                                  _verify();
                                },
                                // onPressed: _canVerify ? _verify : null,

                                style: FilledButton.styleFrom(
                                  backgroundColor: _brandRed,
                                  // disabledBackgroundColor:_brandRed.withValues(alpha: 0.45),
                                  foregroundColor: Colors.white,
                                  // disabledForegroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                child: _isLoading
                                    ? const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text(
                                        'Verify',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
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
