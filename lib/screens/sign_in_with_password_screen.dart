import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/Bloc__state/general_state.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/services/auth_storage.dart';
import 'package:simple_life/services/general_storage.dart';
import 'package:simple_life/utils/utils.dart';

import '../app_routes.dart';

class SignInWithPasswordScreen extends StatefulWidget {
  const SignInWithPasswordScreen({super.key, this.identity = ''});

  final String identity;

  @override
  State<SignInWithPasswordScreen> createState() =>
      _SignInWithPasswordScreenState();
}

class _SignInWithPasswordScreenState extends State<SignInWithPasswordScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _secondaryColor = AppColors.mutedColor;
  static const _fieldBorder = Color(0xFFE5E7EB);
  static const _hintColor = Color(0xFFB8BBC2);

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
        state.message['user'] = {
          "userId": cUser!.userId!,
          "name": cUser!.name!,
          "email": cUser.email!,
          "phone": cUser.phone!,
        };
        if (state.message['user'] == null) {
          throw Exception('Unable to get user');
        } else {
          state.message['userLastUpdated'] = DateTime.now().toIso8601String();
        }
      }
      print(
        'g110 ${state.message['profile']?['customer']?['selectedProfile'] == null}',
      );

      if (state.message['profile']?['customer']?['selectedProfile'] == null) {
        var isSelected = checkIfUserHasSelectedProfile();
        if (isSelected == true) {
          state.message['profile'] = loadSelectedProfile();
        } else {
          context.push(AppRoutes.selectProfile);
        }
      }
      if (await isExpired('policies')) {
        print('state.message 105');
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
          state.message['policiesLastUpdated'] = DateTime.now()
              .toIso8601String();
        }
      }
      final updated = {...state.message, 'policies': state.message['policies']};
      context.read<GeneralBloc>().add(UpdateGeneralMessage(updated));
      if (lifePolicies.contains(state.message['policy']?['type'])) {
        createLifePolicyDocument(context);
      } else if (motorPolicies.contains(state.message['policy']?['type'])) {
        if (!context.mounted) return;
        context.push(AppRoutes.registerMotor);
        return;
      } else if ([
        ...HomeOwnerPolicies,
        ...BusinessProtectPolicies,
        ...TenantProtectPolicies,
      ].contains(state.message['policy']?['type'])) {
        if (!context.mounted) return;
        context.push(AppRoutes.registerProtectee);
        return;
      } else if (PersonalAccidentPolicies.contains(
        state.message['policy']?['type'],
      )) {
        createPersonalAccidentDocument(context);
      } else {
        context.pushReplacement(AppRoutes.home);
      }
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
      backgroundColor: AppColors.backgroundColor,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFF8F7),
              AppColors.backgroundColor,
              Colors.white,
            ],
            stops: [0, 0.45, 1],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.viewInsetsOf(context).bottom + 24,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 414),
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 4, 28, 20),
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
                                    color: _textColor,
                                    size: 14,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Center(
                                child: Container(
                                  width: 76,
                                  height: 76,
                                  decoration: BoxDecoration(
                                    color: _brandRed.withValues(alpha: 0.1),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: _brandRed.withValues(alpha: 0.12),
                                        blurRadius: 24,
                                        offset: const Offset(0, 8),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.lock_rounded,
                                    color: _brandRed,
                                    size: 34,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              const Text(
                                'Enter your password',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _textColor,
                                  fontSize: 28,
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.45,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Secure access to your quotes and policies',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _secondaryColor.withValues(alpha: 0.95),
                                  fontSize: 15,
                                  height: 1.35,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                padding: const EdgeInsets.fromLTRB(20, 22, 20, 22),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: _fieldBorder),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x0A000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Password',
                                      style: TextStyle(
                                        color: _textColor,
                                        fontSize: 14,
                                        height: 1.25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      height: 52,
                                      child: TextField(
                                        controller: _passwordController,
                                        obscureText: _obscurePassword,
                                        textInputAction: TextInputAction.done,
                                        onSubmitted: (_) {
                                          _verify();
                                        },
                                        style: const TextStyle(
                                          color: _textColor,
                                          fontSize: 15,
                                          letterSpacing: 0.4,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: 'Your password',
                                          hintStyle: const TextStyle(
                                            color: _hintColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          filled: true,
                                          fillColor: AppColors.backgroundMuted,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.lock_outline_rounded,
                                            color: _hintColor,
                                            size: 20,
                                          ),
                                          prefixIconConstraints:
                                              const BoxConstraints(minWidth: 46),
                                          suffixIcon: IconButton(
                                            onPressed: () => setState(
                                              () => _obscurePassword =
                                                  !_obscurePassword,
                                            ),
                                            icon: Icon(
                                              _obscurePassword
                                                  ? Icons.visibility_off_outlined
                                                  : Icons.visibility_outlined,
                                              color: _secondaryColor,
                                              size: 22,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              color: _fieldBorder,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              color: _brandRed,
                                              width: 1.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              const SizedBox(height: 32),
                              SizedBox(
                                height: 52,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: _brandRed.withValues(alpha: 0.28),
                                        blurRadius: 16,
                                        offset: const Offset(0, 6),
                                      ),
                                    ],
                                  ),
                                  child: FilledButton(
                                    onPressed: () {
                                      _verify();
                                    },
                                    style: FilledButton.styleFrom(
                                      backgroundColor: _brandRed,
                                      foregroundColor: Colors.white,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
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
                                            'Verify & continue',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.2,
                                            ),
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
      ),
    );
  }
}
