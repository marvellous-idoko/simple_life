import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:simple_life/widgets/policy_details_card.dart';
import 'package:uuid/uuid.dart';

class LifePolicySummary extends StatefulWidget {
  const LifePolicySummary({super.key});

  static const _textColor = AppColors.textColor;
  static const _pageColor = AppColors.backgroundColor;

  @override
  State<LifePolicySummary> createState() => _LifePolicySummaryState();

  static Map<String, dynamic> _asMap(dynamic value) {
    if (value is! Map) return const {};
    return Map<String, dynamic>.from(value);
  }

  static String _text(dynamic value, {String fallback = '--'}) {
    final text = value?.toString().trim() ?? '';
    return text.isEmpty || text == 'null' ? fallback : text;
  }

  static String _policyClass(String policyType) {
    if (SavingsPolicy.values.any((product) => product['name'] == policyType)) {
      return 'Savings';
    }
    if (EndowmentPolicy.values.any(
      (product) => product['name'] == policyType,
    )) {
      return 'Endowment';
    }
    return 'Life';
  }

  static String _duration(dynamic value) {
    final years = int.tryParse(_text(value, fallback: ''));
    if (years == null) return '--';
    return '$years ${years == 1 ? 'year' : 'years'}';
  }

  static String _frequency(dynamic value) {
    final frequency = _text(value, fallback: '');
    if (frequency.isEmpty) return '--';
    const labels = {
      'monthly': 'Every Month',
      'quarterly': 'Every Quarter',
      'biannual': 'Twice a year',
      'annual': 'Once per year',
      'single': 'Just Once',
    };
    return labels[frequency.toLowerCase()] ??
        '${frequency[0].toUpperCase()}${frequency.substring(1)}';
  }

  static String _money(dynamic value) {
    final amount = value is num
        ? value
        : num.tryParse(value?.toString().replaceAll(',', '') ?? '');
    if (amount == null) return '--';

    final digits = amount.round().toString();
    final formatted = digits.replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (_) => ',',
    );
    return '₦$formatted';
  }
}

class _LifePolicySummaryState extends State<LifePolicySummary> {
  Map<String, dynamic> message = {};

  String total = '';

  @override
  void initState() {
    super.initState();
    message = context.read<GeneralBloc>().state.message;
    total = LifePolicySummary._money(message['policy']['quote']['savings']);
    print(message['policy']);
  }

  @override
  Widget build(BuildContext context) {
    // final message = context.select<GeneralBloc, Map<String, dynamic>>(
    //   (bloc) => bloc.state.message,
    // );
    // final policy = LifePolicySummary._asMap(message['policy']);
    // final quote = LifePolicySummary._asMap(policy['quote']);
    // final policyType = LifePolicySummary._text(policy['type'], fallback: 'Policy');
    // final sumAssured = LifePolicySummary._money(quote['sumAssured']);

    return Scaffold(
      backgroundColor: LifePolicySummary._pageColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              children: [
                _ScreenHeader(onBack: () => context.pop()),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(20, 14, 20, 30),
                    child: Column(
                      children: [
                        PolicyDetailsCard(
                          details: [
                            // PolicyDetailItem(
                            //   label: 'Policy Class',
                            //   value: LifePolicySummary._text(message['policy']['class']),
                            // ),
                            PolicyDetailItem(
                              label: 'Policy Type',
                              value: LifePolicySummary._text(
                                message['policy']['type'],
                              ),
                            ),
                            PolicyDetailItem(
                              label: 'Duration',
                              value: LifePolicySummary._duration(
                                message['policy']['quote']['term'],
                              ),
                            ),
                            PolicyDetailItem(
                              label: 'Payment Frequency',
                              value: LifePolicySummary._frequency(
                                message['policy']['quote']['frequency'],
                              ),
                            ),

                            PolicyDetailItem(
                              label: 'Premium',
                              value: LifePolicySummary._money(
                                message['policy']['quote']['contribution'],
                              ),
                            ),
                            PolicyDetailItem(
                              label: 'Sum Assured',
                              value: LifePolicySummary._money(
                                message['policy']['quote']['sumAssured'],
                              ),
                            ),
                          ],
                          total: total,
                        ),
                        ...(message['policy']['beneficiaries'] as List).indexed
                            .map((beneficiary) {
                              final index = beneficiary.$1;
                              final value = Map<String, dynamic>.from(
                                beneficiary.$2 as Map,
                              );
                              return PolicyDetailsCard(
                                backgroundColor: AppColors.backgroundMuted,
                                textColor: AppColors.textColor,
                                details: [
                                  PolicyDetailItem(
                                    label: 'Full Name',
                                    value: LifePolicySummary._text(
                                      value['name'],
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Relationship',
                                    value: LifePolicySummary._text(
                                      value['relationship'],
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Date of Birth',
                                    value: LifePolicySummary._text(
                                      value['DOB'],
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Gender',
                                    value: LifePolicySummary._text(
                                      value['gender'],
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Share',
                                    value: LifePolicySummary._text(
                                      '${value['share']}%',
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Email',
                                    value: LifePolicySummary._text(
                                      value['email'],
                                    ),
                                  ),
                                  PolicyDetailItem(
                                    label: 'Phone',
                                    value: LifePolicySummary._text(
                                      value['phone'],
                                    ),
                                  ),
                                  if (value['guardianName']
                                          ?.toString()
                                          .trim()
                                          .isNotEmpty ==
                                      true) ...[
                                    PolicyDetailItem(
                                      label: 'Guardian Name',
                                      value: LifePolicySummary._text(
                                        value['guardianName'],
                                      ),
                                    ),
                                    PolicyDetailItem(
                                      label: 'Guardian Phone',
                                      value: LifePolicySummary._text(
                                        value['guardianPhone'],
                                      ),
                                    ),
                                    PolicyDetailItem(
                                      label: 'Guardian Address',
                                      value: LifePolicySummary._text(
                                        value['guardianAddress'],
                                      ),
                                    ),
                                  ],
                                ],
                                title: 'Beneficiary ${index + 1} Details',
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Center(
          heightFactor: 1,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 14),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xFFEDEEF1))),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                  onPressed: _showPaymentMethods,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'Select Payment Method',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showPaymentMethods() async {
    String? selectedMethod;
    final policyName = LifePolicySummary._text(
      message['policy']?['type'],
      fallback: 'Policy',
    );
    var method = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      barrierColor: Colors.black.withValues(alpha: 0.34),
      backgroundColor: Colors.transparent,
      builder: (_) => StatefulBuilder(
        builder: (context, setSheetState) => Container(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 30),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Payment Methods',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 15),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    '$total ',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    ' for $policyName',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.mutedColor,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _PaymentMethodTile(
                method: PaymentMethod.paystack.value,
                selected: selectedMethod == PaymentMethod.paystack.value,
                onTap: () {
                  setSheetState(() => selectedMethod = 'paystack');
                  Navigator.pop(
                    context,
                    selectedMethod
                  );
                },
              ),
              const SizedBox(height: 16),
              _PaymentMethodTile(
                method: PaymentMethod.van.value,
                selected: selectedMethod == PaymentMethod.van.value,
                onTap: () {
                  setSheetState(() => selectedMethod = PaymentMethod.van.value);
                  Navigator.pop(
                    context,
                    selectedMethod
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
    message['policy']['paymentMethod'] = method;
    message['policy']['payId'] = const Uuid().v4();
    message['policy']['paymentCode'] = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    await saveMessage(context, message);
    print(message['policy']);
    if (method == PaymentMethod.paystack.value) {
      await payWithPaystack(
        context,
        message['policy']['document']['id'],
        message['policy']['payId'],
        message['policy']['paymentCode'],
        message['policy']['type'],

        // message['policy']['pay']['referrer'],
      );
    } else if (method == PaymentMethod.van.value) {
      // await payWithFlutterwave(context, message['policy']['document']['id'], message['policy']['pay']['id'], message['policy']['pay']['paymentCode'], message['policy']['pay']['referrer']);
    }
  }
}

class _PaymentMethodTile extends StatelessWidget {
  const _PaymentMethodTile({
    required this.method,
    required this.selected,
    required this.onTap,
  });

  final String method;
  final bool selected;
  final VoidCallback onTap;

  bool get _isPaystack => method == 'paystack';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: selected ? AppColors.primary : const Color(0xFFE1E3E8),
          width: selected ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                if (_isPaystack)
                  const _PaystackMark()
                else
                  const _FlutterwaveMark(),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    _isPaystack ? 'paystack' : 'Flutterwave',
                    style: TextStyle(
                      color: _isPaystack
                          ? const Color(0xFF0B1634)
                          : AppColors.textColor,
                      fontSize: _isPaystack ? 20 : 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: _isPaystack ? -0.5 : -0.2,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: 25,
                  height: 25,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: selected ? AppColors.primary : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selected
                          ? AppColors.primary
                          : const Color(0xFF7E8490),
                      width: 1.8,
                    ),
                  ),
                  child: selected
                      ? const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PaystackMark extends StatelessWidget {
  const _PaystackMark();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 22,
      height: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final width in [22.0, 22.0, 17.0, 12.0])
            Container(
              width: width,
              height: 3,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF45BCE9),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
    );
  }
}

class _FlutterwaveMark extends StatelessWidget {
  const _FlutterwaveMark();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 27,
      height: 27,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 0.7,
            child: Container(
              width: 18,
              height: 11,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFF5A623), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Transform.rotate(
            angle: -0.7,
            child: Container(
              width: 18,
              height: 11,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF65BFA5), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreenHeader extends StatelessWidget {
  const _ScreenHeader({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 20, 10),
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: LifePolicySummary._textColor,
              size: 32,
            ),
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Text(
              'Policy Summary',
              style: TextStyle(
                color: LifePolicySummary._textColor,
                fontSize: 23,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
