import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/services/auth_storage.dart';
import 'package:simple_life/services/general_storage.dart';

import '../utils/utils.dart';

class SignInWithOtpScreen extends StatefulWidget {
  const SignInWithOtpScreen({this.identity = '', super.key});

  final String identity;

  @override
  State<SignInWithOtpScreen> createState() => _SignInWithOtpScreenState();
}

class _SignInWithOtpScreenState extends State<SignInWithOtpScreen> {
  static const _otpLength = 6;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _fieldBorder = Color(0xFFE5E7EB);

  final _controllers = List.generate(
    _otpLength,
    (_) => TextEditingController(),
  );
  final _focusNodes = List.generate(_otpLength, (_) => FocusNode());

  Timer? _timer;
  int _secondsRemaining = 30;
  bool _isVerifying = false;
  bool _isResending = false;
  String? _errorMessage;

  String get _identity {
    if (widget.identity.trim().isNotEmpty) return widget.identity.trim();
    final message = context.read<GeneralBloc>().state.message;
    return message['identity']?.toString().trim() ?? '';
  }

  String get _otp => _controllers.map((controller) => controller.text).join();

  @override
  void initState() {
    super.initState();
    _startTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _requestOtp();
      _focusNodes.first.requestFocus();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsRemaining = 30);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (_secondsRemaining <= 1) {
        timer.cancel();
        setState(() => _secondsRemaining = 0);
      } else {
        setState(() => _secondsRemaining--);
      }
    });
  }

  Future<void> _requestOtp({bool isResend = false}) async {
    if (_identity.isEmpty) {
      setState(() => _errorMessage = 'A phone number or email is required.');
      return;
    }

    if (isResend) setState(() => _isResending = true);
    try {
      await GeneralRepository().createOtp(_identity);
      if (!mounted) return;
      setState(() => _errorMessage = null);
      if (isResend) {
        _clearOtp();
        _startTimer();
      }
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _errorMessage = 'Unable to send an OTP. Please try again.';
      });
    } finally {
      if (mounted && isResend) setState(() => _isResending = false);
    }
  }

  void _onDigitChanged(int index, String value) {
    setState(() => _errorMessage = null);

    if (value.isNotEmpty && index < _otpLength - 1) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    if (_otp.length == _otpLength && !_isVerifying) {
      FocusManager.instance.primaryFocus?.unfocus();
      _verifyOtp();
    }
  }

  Future<void> _verifyOtp() async {
    if (_otp.length != _otpLength || _identity.isEmpty) return;

    setState(() {
      _isVerifying = true;
      _errorMessage = null;
    });

    try {
      final token = await GeneralRepository().validateOtp(_identity, _otp);
      if (token == null) throw StateError('The OTP could not be verified.');

      await AuthStorageService().saveToken(
        jsonEncode({
          'token': token.token,
          'expiry': token.expiry,
          'refreshToken': token.refreshToken,
          'refreshExpiry': token.refreshExpiry,
        }),
      );

      if (!mounted) return;
      final blocState = context.read<GeneralBloc>().state;
      final user = await GeneralRepository().getLoggedInUser();
      if (user != null) {
        blocState.message['user'] = {
          'userId': user.userId,
          'name': user.name,
          'email': user.email,
          'phone': user.phone,
        };
        blocState.message['userLastUpdated'] = DateTime.now().toIso8601String();
      }

      if (!mounted) return;
      final lUpdated = Map<String, dynamic>.from(blocState.message);
      context.read<GeneralBloc>().add(UpdateGeneralMessage(lUpdated));
      await GeneralStorageService().saveMessage(lUpdated);
      final state = context.read<GeneralBloc>().state;


      // if (await isExpired('user')) {
      //   var cUser = await GeneralRepository().getLoggedInUser();
      //   state.message['user'] = {
      //     "userId": cUser!.userId!,
      //     "name": cUser!.name!,
      //     "email": cUser.email!,
      //     "phone": cUser.phone!,
      //   };
      //   if (state.message['user'] == null) {
      //     throw Exception('Unable to get user');
      //   } else {
      //     state.message['userLastUpdated'] = DateTime.now().toIso8601String();
      //   }
      // }
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
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _errorMessage = 'Please use the OTP sent to your account.';
      });
      _clearOtp();
    } finally {
      if (mounted) setState(() => _isVerifying = false);
    }
  }

  void _clearOtp() {
    for (final controller in _controllers) {
      controller.clear();
    }
    _focusNodes.first.requestFocus();
  }

  void _goBack() {
    if (context.canPop()) {
      context.pop();
      return;
    }
    context.go(AppRoutes.login);
  }

  String _displayIdentity() {
    final identity = _identity;
    if (identity.contains('@')) {
      final parts = identity.split('@');
      final name = parts.first;
      final visible = name.length <= 2 ? name : name.substring(0, 2);
      return '$visible***@${parts.last}';
    }

    final digits = identity.replaceAll(RegExp(r'\D'), '');
    final localNumber = switch (digits.length) {
      11 when digits.startsWith('0') => digits.substring(1),
      13 when digits.startsWith('234') => digits.substring(3),
      _ => '',
    };
    if (localNumber.length == 10) {
      return '+234 ${localNumber.substring(0, 3)} '
          '${localNumber.substring(3, 6)} ${localNumber.substring(6)}';
    }
    return identity;
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
                                  color: AppColors.primary.withValues(
                                    alpha: 0.1,
                                  ),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.primary.withValues(
                                        alpha: 0.12,
                                      ),
                                      blurRadius: 24,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.sms_rounded,
                                  color: AppColors.primary,
                                  size: 34,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              'OTP verification',
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
                            const Text(
                              'Enter the 6-digit code we sent you',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _mutedColor,
                                fontSize: 15,
                                height: 1.35,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 20),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),
                              child: _errorMessage == null
                                  ? const SizedBox.shrink()
                                  : Container(
                                      key: ValueKey(_errorMessage),
                                      margin: const EdgeInsets.only(bottom: 4),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary
                                            .withValues(alpha: 0.08),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: AppColors.primary
                                              .withValues(alpha: 0.22),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.error_outline_rounded,
                                            color: AppColors.primary
                                                .withValues(alpha: 0.9),
                                            size: 20,
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              _errorMessage!,
                                              style: const TextStyle(
                                                color: _textColor,
                                                fontSize: 13,
                                                height: 1.35,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: _fieldBorder),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    _identity.contains('@')
                                        ? Icons.alternate_email_rounded
                                        : Icons.phone_iphone_rounded,
                                    size: 18,
                                    color: _mutedColor.withValues(alpha: 0.9),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      _displayIdentity(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: _textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 28),
                            Container(
                              padding: const EdgeInsets.fromLTRB(16, 22, 16, 20),
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
                                children: [
                                  Row(
                                    children: [
                                      for (var index = 0;
                                          index < _otpLength;
                                          index++) ...[
                                        if (index > 0) const SizedBox(width: 8),
                                        Expanded(
                                          child: _OtpDigitField(
                                            controller: _controllers[index],
                                            focusNode: _focusNodes[index],
                                            enabled: !_isVerifying,
                                            onChanged: (value) =>
                                                _onDigitChanged(index, value),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  if (_isVerifying)
                                    const SizedBox(
                                      height: 22,
                                      width: 22,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.2,
                                        color: AppColors.primary,
                                      ),
                                    )
                                  else if (_secondsRemaining > 0)
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.backgroundMuted,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        'Resend code in $_secondsRemaining s',
                                        style: const TextStyle(
                                          color: _mutedColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  else
                                    TextButton.icon(
                                      onPressed: _isResending
                                          ? null
                                          : () => _requestOtp(isResend: true),
                                      icon: _isResending
                                          ? const SizedBox(
                                              width: 16,
                                              height: 16,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                color: AppColors.primary,
                                              ),
                                            )
                                          : const Icon(
                                              Icons.refresh_rounded,
                                              size: 18,
                                            ),
                                      label: Text(
                                        _isResending
                                            ? 'Sending...'
                                            : 'Resend OTP',
                                        style: const TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
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

class _OtpDigitField extends StatefulWidget {
  const _OtpDigitField({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.enabled,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  State<_OtpDigitField> createState() => _OtpDigitFieldState();
}

class _OtpDigitFieldState extends State<_OtpDigitField> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final focused = widget.focusNode.hasFocus;
    final filled = widget.controller.text.isNotEmpty;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 160),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: focused
            ? [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.18),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            : null,
      ),
      child: TextField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        enabled: widget.enabled,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {});
        },
        style: TextStyle(
          color: _SignInWithOtpScreenState._textColor,
          fontSize: 18,
          fontWeight: filled ? FontWeight.w700 : FontWeight.w500,
        ),
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: focused
              ? Colors.white
              : AppColors.backgroundMuted.withValues(alpha: 0.65),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: _SignInWithOtpScreenState._fieldBorder,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: _SignInWithOtpScreenState._fieldBorder,
            ),
          ),
        ),
      ),
    );
  }
}
