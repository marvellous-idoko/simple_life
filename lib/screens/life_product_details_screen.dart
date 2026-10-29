import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';

class LifeProductDetailsScreen extends StatelessWidget {
  const LifeProductDetailsScreen({required this.productCode, super.key});

  final String productCode;

  static const _brandRed = AppColors.primary;
  static const _textColor = Color(0xFF515258);
  static const _mutedColor = AppColors.mutedColor;
  static const _backgroundColor = Color(0xFFFCFCFD);

  @override
  Widget build(BuildContext context) {
    final product = _LifeProductDetails.fromCode(productCode);

    if (product == null) {
      return Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.chevron_left_rounded, size: 32),
          ),
          title: const Text('Product details'),
        ),
        body: const Center(child: Text('This product could not be found.')),
      );
    }

    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: _Header(onBack: () => context.pop())),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
                  sliver: SliverList.list(
                    children: [
                      _ProductHero(product: product),
                      const SizedBox(height: 25),
                      const _SectionTitle('About this plan'),
                      const SizedBox(height: 10),
                      Text(
                        product.description,
                        style: const TextStyle(
                          color: _mutedColor,
                          fontSize: 14,
                          height: 1.55,
                        ),
                      ),
                      const SizedBox(height: 26),
                      const _SectionTitle('What you get'),
                      const SizedBox(height: 13),
                      ...product.benefits.map(
                        (benefit) => Padding(
                          padding: const EdgeInsets.only(bottom: 11),
                          child: _BenefitTile(benefit: benefit),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const _SectionTitle('How it works'),
                      const SizedBox(height: 14),
                      const _HowItWorks(),
                    ],
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
            constraints: const BoxConstraints(maxWidth: 620),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 14),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xFFEDEEF1))),
              ),
              child: SizedBox(
                height: 52,
                width: double.infinity,
                child: FilledButton(
                  onPressed: () =>
                      context.push(AppRoutes.lifeProductFormPath(product.code)),
                  style: FilledButton.styleFrom(
                    backgroundColor: _brandRed,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'Buy Now',
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
}

class _Header extends StatelessWidget {
  const _Header({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 20, 12),
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: LifeProductDetailsScreen._textColor,
              size: 32,
            ),
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Text(
              'Product details',
              style: TextStyle(
                color: LifeProductDetailsScreen._textColor,
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

class _ProductHero extends StatelessWidget {
  const _ProductHero({required this.product});

  final _LifeProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 210),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [product.accent.withValues(alpha: 0.78), product.accent],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(product.icon, color: Colors.white, size: 28),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.16),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  product.category,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 27),
          Text(
            product.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              height: 1.15,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.4,
            ),
          ),
          const SizedBox(height: 11),
          Text(
            product.code,
            style: const TextStyle(
              color: Color(0xFFFFE8E7),
              fontSize: 11,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: LifeProductDetailsScreen._textColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _BenefitTile extends StatelessWidget {
  const _BenefitTile({required this.benefit});

  final String benefit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE9EAED)),
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: const BoxDecoration(
              color: Color(0xFFFFE9E7),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_rounded,
              color: LifeProductDetailsScreen._brandRed,
              size: 19,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Text(
              benefit,
              style: const TextStyle(
                color: LifeProductDetailsScreen._textColor,
                fontSize: 13,
                height: 1.35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HowItWorks extends StatelessWidget {
  const _HowItWorks();

  static const _steps = [
    ('1', 'Apply', 'Complete a short application.'),
    ('2', 'Choose cover', 'Select a plan that fits your needs.'),
    ('3', 'Get protected', 'Pay securely and activate your cover.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _steps
          .map(
            (step) => Padding(
              padding: const EdgeInsets.only(bottom: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color(0xFFFFE9E7),
                    child: Text(
                      step.$1,
                      style: const TextStyle(
                        color: LifeProductDetailsScreen._brandRed,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step.$2,
                          style: const TextStyle(
                            color: LifeProductDetailsScreen._textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          step.$3,
                          style: const TextStyle(
                            color: LifeProductDetailsScreen._mutedColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class _LifeProductDetails {
  const _LifeProductDetails({
    required this.code,
    required this.name,
    required this.description,
    required this.category,
    required this.icon,
    required this.accent,
    required this.benefits,
  });

  final String code;
  final String name;
  final String description;
  final String category;
  final IconData icon;
  final Color accent;
  final List<String> benefits;

  static _LifeProductDetails? fromCode(String code) {
    final normalizedCode = code.toUpperCase();
    final categories = [
      (
        products: ProtectionPolicy,
        name: 'Protection',
        icon: Icons.health_and_safety_outlined,
        accent: const Color(0xFFF22B22),
        benefits: const [
          'Financial support for you and your loved ones',
          'Flexible cover designed around life’s uncertainties',
          'Simple application and dependable protection',
        ],
      ),
      (
        products: EndowmentPolicy,
        name: 'Savings & Investment',
        icon: Icons.savings_outlined,
        accent: const Color(0xFF9D5FD2),
        benefits: const [
          'Build savings toward important future goals',
          'Combine disciplined savings with life protection',
          'Flexible planning for your financial future',
        ],
      ),
      (
        products: AnnuityPolicy,
        name: 'Annuity',
        icon: Icons.account_balance_outlined,
        accent: const Color(0xFF2A8C74),
        benefits: const [
          'Enjoy dependable income throughout retirement',
          'Convert eligible pension savings into regular payments',
          'Plan for greater financial confidence after work',
        ],
      ),
    ];

    for (final category in categories) {
      final data = category.products[normalizedCode];
      if (data == null) continue;

      return _LifeProductDetails(
        code: normalizedCode,
        name: data['name'] ?? normalizedCode,
        description: data['description'] ?? '',
        category: category.name,
        icon: category.icon,
        accent: category.accent,
        benefits: category.benefits,
      );
    }
    return null;
  }
}
