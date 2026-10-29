import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/utils/utils.dart';

import '../Bloc__state/general_bloc.dart';

class LifeProductsScreen extends StatefulWidget {
  const LifeProductsScreen({super.key});

  @override
  State<LifeProductsScreen> createState() => _LifeProductsScreenState();
}

class _LifeProductsScreenState extends State<LifeProductsScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _backgroundColor = AppColors.backgroundColor;

  final _searchController = TextEditingController();
  _LifeProductCategory? _selectedCategory;

  late final List<_LifeProduct> _products = [
    ...ProtectionPolicy.entries.map(
      (entry) => _LifeProduct(
        code: entry.key,
        name: entry.value['name'] ?? entry.key,
        description: entry.value['description'] ?? '',
        category: _LifeProductCategory.protection,
        product: entry.value,
      ),
    ),
    ...EndowmentPolicy.entries.map(
      (entry) => _LifeProduct(
        code: entry.key,
        name: entry.value['name'] ?? entry.key,
        description: entry.value['description'] ?? '',
        category: _LifeProductCategory.savings,
        product: entry.value,
      ),
    ),
    ...SavingsPolicy.entries.map(
      (entry) => _LifeProduct(
        code: entry.key,
        name: entry.value['name'] ?? entry.key,
        description: entry.value['description'] ?? '',
        category: _LifeProductCategory.savings,
        product: entry.value,
      ),
    ),
    ...AnnuityPolicy.entries.map(
      (entry) => _LifeProduct(
        code: entry.key,
        name: entry.value['name'] ?? entry.key,
        description: entry.value['description'] ?? '',
        category: _LifeProductCategory.annuity,
        product: entry.value,
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_refresh);
  }

  @override
  void dispose() {
    _searchController
      ..removeListener(_refresh)
      ..dispose();
    super.dispose();
  }

  void _refresh() => setState(() {});

  List<_LifeProduct> get _visibleProducts {
    final query = _searchController.text.trim().toLowerCase();
    return _products.where((product) {
      final matchesCategory =
          _selectedCategory == null || product.category == _selectedCategory;
      final matchesQuery =
          query.isEmpty ||
          product.name.toLowerCase().contains(query) ||
          product.description.toLowerCase().contains(query) ||
          product.code.toLowerCase().contains(query);
      return matchesCategory && matchesQuery;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final products = _visibleProducts;

    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _PageHeader(onBack: () => context.pop()),
                ),
                const SliverToBoxAdapter(child: _LifeProductsHero()),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 23, 20, 0),
                    child: _ProductSearch(controller: _searchController),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 67,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      children: [
                        _CategoryChip(
                          label: 'All',
                          selected: _selectedCategory == null,
                          onTap: () => setState(() => _selectedCategory = null),
                        ),
                        for (final category in _LifeProductCategory.values) ...[
                          const SizedBox(width: 9),
                          _CategoryChip(
                            label: category.label,
                            selected: _selectedCategory == category,
                            onTap: () =>
                                setState(() => _selectedCategory = category),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 15),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Available products',
                            style: TextStyle(
                              color: _textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          '${products.length} product${products.length == 1 ? '' : 's'}',
                          style: const TextStyle(
                            color: _mutedColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (products.isEmpty)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: _EmptyProducts(),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 28),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 13,
                            mainAxisSpacing: 13,
                            childAspectRatio: 0.72,
                          ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                            _LifeProductCard(product: products[index]),
                        childCount: products.length,
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

class _PageHeader extends StatelessWidget {
  const _PageHeader({required this.onBack});

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
              color: _LifeProductsScreenState._textColor,
              size: 32,
            ),
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Text(
              'Life Insurance',
              style: TextStyle(
                color: _LifeProductsScreenState._textColor,
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

class _LifeProductsHero extends StatelessWidget {
  const _LifeProductsHero();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.fromLTRB(20, 19, 18, 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF624F53), Color(0xFFEF2E25)],
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plans for every stage of life',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    height: 1.15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  'Protect your family, grow your savings and plan for retirement.',
                  style: TextStyle(
                    color: Color(0xFFF6E4E3),
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 14),
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.17),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.favorite_rounded,
              color: Colors.white,
              size: 33,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductSearch extends StatelessWidget {
  const _ProductSearch({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE7E9ED)),
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded, color: Color(0xFFA5AAB4), size: 22),
          const SizedBox(width: 9),
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(
                color: _LifeProductsScreenState._textColor,
                fontSize: 14,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search life insurance products',
                hintStyle: TextStyle(color: Color(0xFFADB2BB), fontSize: 13),
              ),
            ),
          ),
          if (controller.text.isNotEmpty)
            IconButton(
              onPressed: controller.clear,
              visualDensity: VisualDensity.compact,
              icon: const Icon(
                Icons.close_rounded,
                color: Color(0xFFA5AAB4),
                size: 19,
              ),
            ),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => onTap(),
      showCheckmark: false,
      side: BorderSide(
        color: selected
            ? _LifeProductsScreenState._brandRed
            : const Color(0xFFE3E5E9),
      ),
      backgroundColor: Colors.white,
      selectedColor: const Color(0xFFFFE9E7),
      labelStyle: TextStyle(
        color: selected
            ? _LifeProductsScreenState._brandRed
            : _LifeProductsScreenState._mutedColor,
        fontSize: 12,
        fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}

class _LifeProductCard extends StatelessWidget {
  const _LifeProductCard({required this.product});

  final _LifeProduct product;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFFE9EAED)),
      ),
      child: InkWell(
        onTap: () => {
          // context.read<GeneralBloc>
          goToNextPage(context, product.name, product.code, product.product),
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 14, 12, 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 39,
                height: 39,
                decoration: BoxDecoration(
                  color: product.category.color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Icon(
                  product.category.icon,
                  color: product.category.color,
                  size: 22,
                ),
              ),
              const Spacer(),
              Text(
                product.category.label,
                style: TextStyle(
                  color: product.category.color,
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                product.name,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _LifeProductsScreenState._textColor,
                  fontSize: 13,
                  height: 1.25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const SizedBox(height: 7),
              // Text(
              //   product.description,
              //   maxLines: 2,
              //   overflow: TextOverflow.ellipsis,
              //   style: const TextStyle(
              //     color: _LifeProductsScreenState._mutedColor,
              //     fontSize: 9,
              //     height: 1.3,
              //   ),
              // ),
              const SizedBox(height: 9),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      product.code,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _LifeProductsScreenState._mutedColor,
                        fontSize: 8,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: _LifeProductsScreenState._brandRed,
                    size: 17,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToNextPage(
    BuildContext context,
    String name,
    String code,
    dynamic productClass,
  ) async {
    print(productClass.toString());
    var message = context.read<GeneralBloc>().state.message;
    message['policy'] = {'type': name,
      'class': productClass,
      'terms':product.product['terms'],
      'availableFrequencies':product.product['availableFrequencies'],
      'minAmount':product.product['minAmount']
    };
    print("message['policy']['terms']");
    print(message['policy']['terms']);
    await saveMessage(context, context.read<GeneralBloc>().state.message);
    context.go(AppRoutes.lifeProductForm);
    // context.go('/life-products/${productClass}');

  }
}

class _EmptyProducts extends StatelessWidget {
  const _EmptyProducts();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search_off_rounded, color: Color(0xFFB6BAC2), size: 52),
            SizedBox(height: 12),
            Text(
              'No life insurance products found',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _LifeProductsScreenState._mutedColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _LifeProductCategory {
  protection('Protection', Icons.health_and_safety_outlined, Color(0xFFF22B22)),
  savings('Savings & Investment', Icons.savings_outlined, Color(0xFF9D5FD2)),
  annuity('Annuity', Icons.account_balance_outlined, Color(0xFF2A8C74));

  const _LifeProductCategory(this.label, this.icon, this.color);

  final String label;
  final IconData icon;
  final Color color;
}

class _LifeProduct {
  const _LifeProduct({
    required this.code,
    required this.name,
    required this.description,
    required this.category,
    required this.product,
  });

  final Map<String, dynamic> product;
  final String code;
  final String name;
  final String description;
  final _LifeProductCategory category;
}
