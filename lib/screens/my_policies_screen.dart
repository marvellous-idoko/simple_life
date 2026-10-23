import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';

class MyPoliciesScreen extends StatefulWidget {
  const MyPoliciesScreen({super.key});

  @override
  State<MyPoliciesScreen> createState() => _MyPoliciesScreenState();
}

class _MyPoliciesScreenState extends State<MyPoliciesScreen> {
  static const _brandRed = Color(0xFFFF241B);
  static const _textColor = Color(0xFF55565A);
  static const _mutedColor = Color(0xFF858B98);
  static const _pageColor = Color(0xFFFDFDFE);

  final _searchController = TextEditingController();
  _PolicyCategory _category = _PolicyCategory.all;
  _PolicyStatusFilter _status = _PolicyStatusFilter.all;

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

  List<Map<String, dynamic>> _readPolicies(BuildContext context) {
    final value = context.select<GeneralBloc, dynamic>(
      (bloc) => bloc.state.message['policies'],
    );
    if (value is! List) return const [];

    return value
        .whereType<Map>()
        .map((policy) => Map<String, dynamic>.from(policy))
        .toList();
  }

  List<Map<String, dynamic>> _filteredPolicies(
    List<Map<String, dynamic>> policies,
  ) {
    final query = _searchController.text.trim().toLowerCase();

    return policies.where((policy) {
      final title = _text(policy['policyName']);
      final number = _text(policy['policyNumber']);
      final status = _statusFor(policy);
      final isGeneral = _isGeneralPolicy(policy);

      final matchesQuery =
          query.isEmpty ||
          title.toLowerCase().contains(query) ||
          number.toLowerCase().contains(query);
      final matchesCategory = switch (_category) {
        _PolicyCategory.all => true,
        _PolicyCategory.general => isGeneral,
        _PolicyCategory.life => !isGeneral,
      };
      final matchesStatus = switch (_status) {
        _PolicyStatusFilter.all => true,
        _PolicyStatusFilter.active => status == 'active',
        _PolicyStatusFilter.pending => status == 'pending',
        _PolicyStatusFilter.expired => status == 'expired',
      };

      return matchesQuery && matchesCategory && matchesStatus;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final policies = _readPolicies(context);
    final visiblePolicies = _filteredPolicies(policies);
    final activeCount = policies
        .where((policy) => _statusFor(policy) == 'active')
        .length;

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
                  child: CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(child: _PoliciesHeader()),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
                          child: _PoliciesSummaryCard(
                            policyCount: policies.length,
                            activeCount: activeCount,
                            policies: policies,
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 20)),
                      PinnedHeaderSliver(
                        //   pinned: true,
                        // delegate: _StickyFiltersDelegate(
                        child: ColoredBox(
                          color: _pageColor,
                          child: Column(
                            children: [
                              _CategoryTabs(
                                selected: _category,
                                onChanged: (value) =>
                                    setState(() => _category = value),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: _PolicySearchBar(
                                  controller: _searchController,
                                  status: _status,
                                  onStatusChanged: (value) =>
                                      setState(() => _status = value),
                                ),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                        // ),
                      ),
                      if (visiblePolicies.isEmpty)
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: _EmptyPolicies(
                            hasPolicies: policies.isNotEmpty,
                          ),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              if (index.isOdd) {
                                return const SizedBox(height: 2);
                              }
                              final policyIndex = index ~/ 2;
                              final policy = visiblePolicies[policyIndex];
                              return _PolicyListItem(
                                policy: policy,
                                isGeneral: _isGeneralPolicy(policy),
                              );
                            }, childCount: visiblePolicies.length * 2 - 1),
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
    );
  }
}

class _PoliciesHeader extends StatelessWidget {
  const _PoliciesHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 13, 18, 0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'My Policies',
              style: TextStyle(
                color: _MyPoliciesScreenState._textColor,
                fontSize: 23,
                height: 1.2,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.35,
              ),
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  color: Color(0xFF737987),
                  size: 23,
                ),
              ),
              Positioned(
                right: -3,
                top: -5,
                child: Container(
                  constraints: const BoxConstraints(minWidth: 20),
                  height: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _MyPoliciesScreenState._brandRed,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: const Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          const CircleAvatar(
            radius: 19,
            backgroundColor: _MyPoliciesScreenState._brandRed,
            child: Text(
              'GP',
              style: TextStyle(
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

class _PoliciesSummaryCard extends StatelessWidget {
  const _PoliciesSummaryCard({
    required this.policyCount,
    required this.activeCount,
    required this.policies,
  });

  final int policyCount;
  final int activeCount;
  final List<Map<String, dynamic>> policies;

  @override
  Widget build(BuildContext context) {
    final nextRenewal = _nextRenewalDate(policies);
    final coverValue = _totalCoverValue(policies);

    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF5C5054),
                    Color(0xFFA43A3B),
                    Color(0xFFFF231A),
                  ],
                  stops: [0, 0.55, 1],
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: CustomPaint(painter: _SummaryPatternPainter()),
          ),
          SizedBox(
            height: 178,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(22, 18, 22, 17),
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
                                color: Color(0xFFEADFE0),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '$policyCount',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                height: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 9),
                            Text(
                              '$activeCount Active Policies',
                              style: const TextStyle(
                                color: Color(0xFFE9DADB),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 22),
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
                  Row(
                    children: [
                      Expanded(
                        child: _SummaryMetric(
                          label: 'Next renewal date',
                          value: nextRenewal,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Expanded(
                        child: _SummaryMetric(
                          label: 'Total cover value',
                          value: coverValue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryMetric extends StatelessWidget {
  const _SummaryMetric({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
            style: const TextStyle(
              color: Color(0xFFF3E6E6),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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

class _SummaryPatternPainter extends CustomPainter {
  const _SummaryPatternPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.055)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    final path = Path()
      ..moveTo(size.width * 0.58, -12)
      ..lineTo(size.width * 0.84, size.height * 0.94)
      ..lineTo(size.width * 0.74, size.height * 0.48)
      ..lineTo(size.width, size.height * 0.2);
    canvas.drawPath(path, paint);
    canvas.drawCircle(
      Offset(size.width * 0.87, size.height * 0.73),
      size.height * 0.42,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _CategoryTabs extends StatelessWidget {
  const _CategoryTabs({required this.selected, required this.onChanged});

  final _PolicyCategory selected;
  final ValueChanged<_PolicyCategory> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        length: _PolicyCategory.values.length,
        initialIndex: selected.index,
        child: Material(
          color: Colors.transparent,
          child: TabBar(
            onTap: (index) => onChanged(_PolicyCategory.values[index]),
            indicatorColor: _MyPoliciesScreenState._brandRed,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2,
            dividerColor: const Color(0xFFF1F1F3),
            dividerHeight: 1,
            labelColor: _MyPoliciesScreenState._textColor,
            unselectedLabelColor: _MyPoliciesScreenState._mutedColor,
            labelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            overlayColor: WidgetStatePropertyAll(
              _MyPoliciesScreenState._brandRed.withValues(alpha: 0.06),
            ),
            splashBorderRadius: BorderRadius.circular(8),
            tabs: _PolicyCategory.values
                .map((category) => Tab(height: 38, text: category.label))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _PolicySearchBar extends StatelessWidget {
  const _PolicySearchBar({
    required this.controller,
    required this.status,
    required this.onStatusChanged,
  });

  final TextEditingController controller;
  final _PolicyStatusFilter status;
  final ValueChanged<_PolicyStatusFilter> onStatusChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded, color: Color(0xFFADB2BC), size: 21),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(
                color: _MyPoliciesScreenState._textColor,
                fontSize: 12,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
                hintText: 'Search by name or policy number',
                hintStyle: TextStyle(color: Color(0xFFB5BAC4), fontSize: 11),
              ),
            ),
          ),
          PopupMenuButton<_PolicyStatusFilter>(
            initialValue: status,
            onSelected: onStatusChanged,
            color: Colors.white,
            elevation: 5,
            position: PopupMenuPosition.under,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (context) => _PolicyStatusFilter.values
                .map(
                  (value) => PopupMenuItem(
                    value: value,
                    height: 38,
                    child: Text(
                      value.label,
                      style: TextStyle(
                        color: value == status
                            ? _MyPoliciesScreenState._brandRed
                            : _MyPoliciesScreenState._textColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
                .toList(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 12, 13, 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    status.label,
                    style: const TextStyle(
                      color: Color(0xFF9DA2AC),
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFFA9AEB8),
                    size: 17,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PolicyListItem extends StatelessWidget {
  const _PolicyListItem({required this.policy, required this.isGeneral});

  final Map<String, dynamic> policy;
  final bool isGeneral;

  @override
  Widget build(BuildContext context) {
    final status = _statusFor(policy);
    final isActive = status == 'active';
    final isPending = status == 'pending';
    final accent = isGeneral
        ? const Color(0xFF475E9D)
        : _MyPoliciesScreenState._brandRed;

    return Container(
      padding: const EdgeInsets.fromLTRB(13, 16, 13, 17),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFFFE8E6), width: 1)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.09),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isGeneral
                      ? Icons.directions_car_filled_outlined
                      : Icons.favorite_rounded,
                  color: accent,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _text(policy['policyName'], fallback: 'Insurance Policy'),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _MyPoliciesScreenState._textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Policy No: ${_text(policy['policyNumber'], fallback: '—')}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xFF969BA6),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: isActive
                      ? const Color(0xFFDDF5EB)
                      : isPending
                      ? const Color(0xFFFFF1D7)
                      : const Color(0xFFF2F2F4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  _capitalize(status),
                  style: TextStyle(
                    color: isActive
                        ? const Color(0xFF29B985)
                        : isPending
                        ? const Color(0xFFD89220)
                        : const Color(0xFF898E98),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _PolicyDetail(
                  label: 'Premium',
                  value: _formatPremium(policy['premium']),
                ),
              ),
              Expanded(
                child: _PolicyDetail(
                  label: 'Effective date',
                  value: _formatDate(
                    policy['policyStartDate'] ?? policy['issueDate'],
                  ),
                ),
              ),
              Expanded(
                child: _PolicyDetail(
                  label: 'Expiry Date',
                  value: _formatDate(policy['policyExpiryDate']),
                ),
              ),
            ],
          ),
          const SizedBox(height: 17),
          Row(
            children: [
              const Icon(
                Icons.check_circle_rounded,
                color: Color(0xFF28B780),
                size: 16,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  isActive ? 'Year 1 Complete' : _capitalize(status),
                  style: const TextStyle(
                    color: Color(0xFF28B780),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 34,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: _MyPoliciesScreenState._brandRed,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    'View',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PolicyDetail extends StatelessWidget {
  const _PolicyDetail({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFA0A5AF),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: _MyPoliciesScreenState._textColor,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _EmptyPolicies extends StatelessWidget {
  const _EmptyPolicies({required this.hasPolicies});

  final bool hasPolicies;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.description_outlined,
              color: Color(0xFFC6C9D0),
              size: 48,
            ),
            const SizedBox(height: 13),
            Text(
              hasPolicies
                  ? 'No policies match your filters'
                  : 'You have no policies yet',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: _MyPoliciesScreenState._mutedColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _PolicyCategory {
  all('All Policies'),
  general('General Policies'),
  life('Life Policies');

  const _PolicyCategory(this.label);
  final String label;
}

enum _PolicyStatusFilter {
  all('All'),
  active('Active'),
  pending('Pending'),
  expired('Expired');

  const _PolicyStatusFilter(this.label);
  final String label;
}

String _text(dynamic value, {String fallback = ''}) {
  final result = value?.toString().trim() ?? '';
  return result.isEmpty ? fallback : result;
}

String _statusFor(Map<String, dynamic> policy) {
  final expiry = _tryDate(policy['policyExpiryDate']);
  if (expiry != null && expiry.isBefore(DateTime.now())) return 'expired';
  final value = _text(policy['policyStatus']).toLowerCase();
  if (value.contains('pending')) return 'pending';
  if (value.contains('expire') || value.contains('lapse')) return 'expired';
  return 'active';
}

bool _isGeneralPolicy(Map<String, dynamic> policy) {
  final text = '${_text(policy['policyName'])} ${_text(policy['company'])}'
      .toLowerCase();
  const generalTerms = [
    'motor',
    'travel',
    'home',
    'general',
    'accident',
    'vehicle',
    'marine',
  ];
  return generalTerms.any(text.contains);
}

DateTime? _tryDate(dynamic value) {
  if (value is DateTime) return value;
  return DateTime.tryParse(_text(value));
}

String _formatDate(dynamic value) {
  final raw = _text(value, fallback: '—');
  final date = _tryDate(value);
  if (date == null) return raw;
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  return '${months[date.month - 1]} ${date.day}, ${date.year}';
}

String _formatPremium(dynamic value) {
  final raw = _text(value, fallback: '—');
  if (raw == '—') return raw;
  if (raw.contains('₦')) return raw;

  final normalized = raw.replaceAll(RegExp(r'[^0-9.-]'), '');
  final amount = num.tryParse(normalized);
  if (amount == null) return raw;

  final number = amount % 1 == 0
      ? amount.toInt().toString()
      : amount.toStringAsFixed(2);
  final parts = number.split('.');
  final formatted = parts.first.replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (_) => ',',
  );
  return '₦$formatted${parts.length > 1 ? '.${parts.last}' : ''}';
}

String _nextRenewalDate(List<Map<String, dynamic>> policies) {
  final now = DateTime.now();
  final dates =
      policies
          .map(
            (policy) =>
                _tryDate(policy['policyExpiryDate']) ??
                _tryDate(policy['policyStartDate']),
          )
          .whereType<DateTime>()
          .where((date) => date.isAfter(now))
          .toList()
        ..sort();
  return dates.isEmpty ? 'Aug 1, 2026' : _formatDate(dates.first);
}

String _totalCoverValue(List<Map<String, dynamic>> policies) {
  final total = policies.fold<num>(0, (sum, policy) {
    final raw =
        policy['sumInsured'] ?? policy['totalCoverValue'] ?? policy['premium'];
    final value = num.tryParse(_text(raw).replaceAll(RegExp(r'[^0-9.-]'), ''));
    return sum + (value ?? 0);
  });
  return total == 0 ? '₦5,000,000' : _formatPremium(total);
}

String _capitalize(String value) {
  if (value.isEmpty) return value;
  return '${value[0].toUpperCase()}${value.substring(1)}';
}
