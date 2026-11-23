import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:uuid/uuid.dart';

class GetQuoteScreen extends StatelessWidget {
  const GetQuoteScreen({super.key});

  static const _plans = [
    _QuotePlan(
      code: '1',
      name: 'My Car',
      productIcon: 'assets/images/car_insurance.png',
      background: Color(0xFFFCE8DF),
      accent: Color(0xFFD98457),
    ),
    _QuotePlan(
      code: '2',
      name: 'My Property',
      // productIcon: Icons.trending_up_rounded,
      productIcon: 'assets/images/Homeowner.png',
      background: Color(0xFFF9E5F0),
      accent: Color(0xFFE875A5),
    ),
    _QuotePlan(
      code: '3',
      name: 'My Family',
      // productIcon: Icons.people_alt_rounded,
      productIcon: 'assets/images/Couple__Investment.png',

      background: Color(0xFFFCE8DF),
      accent: Color(0xFFB96B48),
    ),
    _QuotePlan(
      code: '4',
      name: 'My Business',
      // productIcon: Icons.groups_2_rounded,
      productIcon: 'assets/images/Couple__Investment.png',

      background: Color(0xFFF9E5F0),
      accent: Color(0xFFD65D91),
    ),
    // _QuotePlan(
    //   code: '5',
    //   name: 'My Travel',
    //   // productIcon: 'Icons.savings_rounded',
    //   productIcon: 'assets/images/Couple__Investment.png',
    //
    //   background: Color(0xFFFCE8DF),
    //   accent: Color(0xFFD99A76),
    // ),

    _QuotePlan(
      code: '6',
      name: 'Tenants Protection',
      // productIcon: Icons.lock_person_rounded,
      productIcon: 'assets/images/Couple__Investment.png',

      background: AppColors.backgroundColor,
      accent: AppColors.backgroundColor,
    ),
    _QuotePlan(
      code: '7',
      name: 'Fire & Peril',
      // productIcon: Icons.diversity_1_rounded,
      // productIcon: 'assets/images/Couple__Investment.png',
      productIcon: 'assets/images/fire-damages.png',
      background: AppColors.backgroundColor,
      accent: Color(0xFFC87851),
    ),
    _QuotePlan(
      code: '8',
      name: 'Personal Accident',
      // productIcon: Icons.stacked_line_chart_rounded,
      productIcon: 'assets/images/Couple__Investment.png',

      background: Color(0xFFE3F1E8),
      accent: Color(0xFFDF9A24),
    ),

    _QuotePlan(
      code: '9',
      name: 'Savings & Investment',
      // productIcon: Icons.stacked_line_chart_rounded,
      productIcon: 'assets/images/Couple__Investment.png',

      background: Color(0xFFE3F1E8),
      accent: Color(0xFFDF9A24),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('What are you quoting for?'),
        centerTitle: false,
        titleSpacing: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 2.0,
        // Controls the drop shadow depth

        // Leading widget (typically left-aligned like a menu drawer or back arrow)
        leading: IconButton(
          onPressed: () =>
              context.canPop() ? context.pop() : context.go(AppRoutes.start),
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: AppColors.textColor,
            size: 29,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: CustomScrollView(
              slivers: [
                // SliverToBoxAdapter(
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(8, 10, 22, 22),
                //     child: Row(
                //       children: [
                //         const SizedBox(width: 2),
                //         const Expanded(
                //           child: Text(
                //             'Buy an Insurance Plan',
                //             style: TextStyle(
                //               color: AppColors.textColor,
                //               fontSize: 18,
                //               fontWeight: FontWeight.w600,
                //               letterSpacing: -0.2,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 28),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 1.02,
                        ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => _QuotePlanCard(plan: _plans[index]),
                      childCount: _plans.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuotePlanCard extends StatelessWidget {
  const _QuotePlanCard({required this.plan});

  final _QuotePlan plan;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      // borderRadius: BorderRadius.circular(8),

      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: AppColors.primary, // Change to your preferred border color
          width: 1.0, // Change border width if needed
        ),
      ),
      child: InkWell(
        onTap: () => _proceed(plan.code, context),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
          child: Column(
            children: [
              Expanded(child: _PlanIllustration(plan: plan)),
              const SizedBox(height: 4),
              Text(
                plan.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 13,
                  height: 1.25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _proceed(String code, BuildContext context) async {
    // var message = context.read<GeneralBloc>().state.message;
    // var phoneValue = await _showQuotePhoneSheet(context, plan);
    // if (!context.mounted || phoneValue == null) {
    //   return;
    // }
    // var cartId = Uuid().v4();
    //
    // message['policy'] = {
    //   'customer': {'phone': phoneValue},
    //   'cartId': cartId,
    // };
    // var payload = {
    //   'cartId': cartId,
    //   'body': {
    //     'cartId': cartId,
    //     'payload': message['policy'],
    //     'resumePath': '/get-quote',
    //   },
    // };
    //
    // await GeneralRepository().addCartItem(cartId, Map<String, dynamic>.from(message['policy']));
    // if (!context.mounted) return;
    // await saveMessage(context, message);
    // if (!context.mounted) return;
    context.push(AppRoutes.getQuoteProductDetailsPath(code),   extra: plan.productIcon);
  }
}

Future<String?> _showQuotePhoneSheet(BuildContext context, _QuotePlan plan) {
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.35),
    builder: (context) => _QuotePhoneSheet(plan: plan),
  );
}

class _QuotePhoneSheet extends StatefulWidget {
  const _QuotePhoneSheet({required this.plan});

  final _QuotePlan plan;

  @override
  State<_QuotePhoneSheet> createState() => _QuotePhoneSheetState();
}

class _QuotePhoneSheetState extends State<_QuotePhoneSheet> {
  static const _textColor = Color(0xFF515258);
  static const _mutedColor = Color(0xFF858B98);
  static const _borderColor = Color(0xFFD8DAE0);
  static const _disabledColor = Color(0xFFF1F2F5);

  final _phoneController = TextEditingController();
  bool _agreedToTerms = false;

  bool get _canContinue {
    final digits = _phoneController.text.replaceAll(RegExp(r'\D'), '');
    return digits.length >= 10 && _agreedToTerms;
  }

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(_refresh);
  }

  @override
  void dispose() {
    _phoneController
      ..removeListener(_refresh)
      ..dispose();
    super.dispose();
  }

  void _refresh() => setState(() {});

  void _continue() {
    FocusManager.instance.primaryFocus?.unfocus();
    Navigator.of(context).pop(_phoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return AnimatedPadding(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 1,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 608),
          child: Semantics(
            label: 'Start ${widget.plan.name} quote',
            child: Material(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(26, 18, 26, 34),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 42,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9EA3AD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Let's start with your number.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: _textColor,
                        fontSize: 21,
                        height: 1.2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          color: _mutedColor,
                          fontSize: 14,
                          height: 1.55,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "We'll use this to save your quote and send you\n"
                                'updates. By continuing you agree to our\n',
                          ),
                          const TextSpan(
                            text: 'Terms of Use',
                            style: TextStyle(color: AppColors.primary),
                          ),
                          const TextSpan(text: ' and '),
                          const TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28),
                    Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: _borderColor),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 112,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF52B95B),
                                  ),
                                  child: const Text(
                                    '🇳🇬',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  '+234',
                                  style: TextStyle(
                                    color: _textColor,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(width: 7),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xFF9A9EA8),
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          Container(width: 1, color: _borderColor),
                          Expanded(
                            child: TextField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              onSubmitted: (_) {
                                if (_canContinue) _continue();
                              },
                              style: const TextStyle(
                                color: _textColor,
                                fontSize: 15,
                              ),
                              decoration: const InputDecoration(
                                hintText: '816-54-893-19',
                                hintStyle: TextStyle(
                                  color: Color(0xFFB9BDC7),
                                  fontSize: 15,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: FilledButton(
                        onPressed: _canContinue ? _continue : null,
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          disabledBackgroundColor: _disabledColor,
                          foregroundColor: Colors.white,
                          disabledForegroundColor: const Color(0xFF8F94A0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: _agreedToTerms,
                            onChanged: (value) {
                              setState(() => _agreedToTerms = value ?? false);
                            },
                            activeColor: AppColors.primary,
                            side: const BorderSide(
                              color: Color(0xFF9DA2AE),
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        const SizedBox(width: 7),
                        const Flexible(
                          child: Text(
                            'I agree to the Terms & Privacy Policy.',
                            style: TextStyle(
                              color: _mutedColor,
                              fontSize: 13,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PlanIllustration extends StatelessWidget {
  const _PlanIllustration({required this.plan});

  final _QuotePlan plan;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 76,
        height: 68,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 3,
              child: Container(
                // width: 62,
                // height: 18,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              top: 3,
              child: Hero(
                tag: 'plan_${plan.code}',
                child: Image.asset(
                  plan.productIcon,
                  // width: 150,
                  // height: 150,
                  width: 58,
                  height: 58,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Positioned(
            //   right: 2,
            //   top: 4,
            //   child: Container(
            //     width: 19,
            //     height: 19,
            //     decoration: const BoxDecoration(
            //       color: Colors.white,
            //       shape: BoxShape.circle,
            //     ),
            //     child: const Icon(
            //       Icons.favorite_rounded,
            //       color: AppColors.primary,
            //       size: 12,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class _QuotePlan {
  const _QuotePlan({
    required this.code,
    required this.name,
    required this.productIcon,
    required this.background,
    required this.accent,
  });

  final String code;
  final String name;
  final String productIcon;
  final Color background;
  final Color accent;
}
