import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _brandRed = Color(0xFFF22B22);
  static const _textColor = Color(0xFF4F5055);
  static const _mutedColor = Color(0xFF777D8B);
  static const _pageColor = Color(0xFFFCFCFD);

  @override
  Widget build(BuildContext context) {
    final message = context.select<GeneralBloc, dynamic>(
      (bloc) => bloc.state.message,
    );
    final userName = message['user']?['name']?.trim();
    final displayName = userName == null || userName.isEmpty
        ? 'Grace Peter'
        : userName;
    final policies = message['policies'];

    return Scaffold(
      backgroundColor: _pageColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _DashboardHeader(name: displayName),
                        const SizedBox(height: 22),
                        _PolicyCarousel(policies: policies),
                        const SizedBox(height: 25),
                        const _QuickActions(),
                        const SizedBox(height: 26),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: _RewardsCard(),
                        ),
                      ],
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

class _DashboardHeader extends StatelessWidget {
  const _DashboardHeader({required this.name});

  final String name;

  String get initials {
    final parts = name
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2)
        .toList();
    return parts.isEmpty
        ? 'GP'
        : parts.map((part) => part[0].toUpperCase()).join();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Color(0xFF8A8F9A),
                        fontSize: 12,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text('👋', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: HomeScreen._textColor,
                    fontSize: 22,
                    height: 1.15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F3F5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  color: HomeScreen._mutedColor,
                  size: 23,
                ),
              ),
              Positioned(
                top: -5,
                right: -3,
                child: Container(
                  constraints: const BoxConstraints(minWidth: 20),
                  height: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: HomeScreen._brandRed,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: Text(
                    '1',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      height: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          CircleAvatar(
            radius: 19,
            backgroundColor: HomeScreen._brandRed,
            child: Text(
              initials,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PolicyCarousel extends StatelessWidget {
  final List<dynamic>? policies;
  const _PolicyCarousel({required this.policies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = math.max(280.0, constraints.maxWidth - 58);
          return ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 18),
            children: [
              SizedBox(
                width: cardWidth,
                child: _PolicyCard(policies: policies!),
              ),
              const SizedBox(width: 12),
              SizedBox(width: cardWidth, child: const _InsuranceCardPreview()),
            ],
          );
        },
      ),
    );
  }
}

class _PolicyCard extends StatelessWidget {
  final List<dynamic> policies;

  const _PolicyCard({required this.policies});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF604F54),
                  Color(0xFFA43B3B),
                  Color(0xFFFF241B),
                ],
                stops: [0, 0.55, 1],
              ),
            ),
          ),
          const Positioned.fill(
            child: CustomPaint(painter: _CardLinePainter()),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'All Policies',
                            style: TextStyle(
                              color: Color(0xFFE8DCDD),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            policies.length.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              height: 1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 9),
                          const Text(
                            '3 Active Policies',
                            style: TextStyle(
                              color: Color(0xFFE9DADB),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 23),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.19),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Covered',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  children: [
                    Expanded(
                      child: _PolicyMetric(
                        label: 'Next renewal date',
                        value: 'Aug 1, 2026',
                      ),
                    ),
                    SizedBox(width: 18),
                    Expanded(
                      child: _PolicyMetric(
                        label: 'Total cover value',
                        value: '₦5,000,000',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PolicyMetric extends StatelessWidget {
  const _PolicyMetric({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.22),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFFF4E6E6),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _InsuranceCardPreview extends StatelessWidget {
  const _InsuranceCardPreview();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1F2022), Color(0xFF09090A)],
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.shield_outlined, color: Colors.white, size: 30),
          Spacer(),
          Text(
            'General Insurance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 9),
          Text(
            'Motor  •  Travel  •  Home',
            style: TextStyle(color: Color(0xFFB8BAC0), fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _CardLinePainter extends CustomPainter {
  const _CardLinePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.055)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    final path = Path()
      ..moveTo(size.width * 0.58, -10)
      ..lineTo(size.width * 0.83, size.height * 0.93)
      ..lineTo(size.width * 0.73, size.height * 0.48)
      ..lineTo(size.width * 0.98, size.height * 0.24);
    canvas.drawPath(path, paint);
    canvas.drawCircle(
      Offset(size.width * 0.86, size.height * 0.72),
      size.height * 0.42,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _QuickActions extends StatelessWidget {
  const _QuickActions();

  static const _actions = [
    (Icons.description_outlined, 'My Policies', '/my-policies'),
    (Icons.warning_amber_rounded, 'Make a Claim', '/make-a-claim'),
    (Icons.assignment_outlined, 'My Claims', '/my-claims'),
    (Icons.credit_card_outlined, 'Pay Premium', '/pay-premium'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Actions',
            style: TextStyle(
              color: HomeScreen._textColor,
              fontSize: 20,
              height: 1.2,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 19),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _actions
                .map(
                  (action) => Expanded(
                    child: _QuickAction(
                      icon: action.$1,
                      label: action.$2,
                      route: action.$3,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({
    required this.icon,
    required this.label,
    required this.route,
  });

  final IconData icon;
  final String label;

  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.go(route);
      },
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x0DDF291F),
                  blurRadius: 9,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Icon(icon, color: HomeScreen._mutedColor, size: 28),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: HomeScreen._mutedColor,
              fontSize: 11,
              height: 1.2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _RewardsCard extends StatelessWidget {
  const _RewardsCard();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 146,
          padding: const EdgeInsets.fromLTRB(22, 20, 118, 18),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF280100), Color(0xFF4B0200)],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Heirs Insurance Rewards',
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Hello GRACE — enjoy exclusive\nrewards & benefits',
                style: TextStyle(
                  color: Color(0xFFE8D6D4),
                  fontSize: 11,
                  height: 1.35,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 29,
                child: FilledButton.icon(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: HomeScreen._brandRed,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: const Icon(Icons.credit_card, size: 13),
                  label: const Text(
                    'View Card',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 22,
          right: 24,
          child: Text('🎁', style: TextStyle(fontSize: 48)),
        ),
        Positioned(
          right: -2,
          bottom: -18,
          child: Container(
            width: 58,
            height: 58,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              color: HomeScreen._brandRed,
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundColor: Color(0xFFF1C6A8),
              child: Icon(
                Icons.person_rounded,
                color: Color(0xFF513329),
                size: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
