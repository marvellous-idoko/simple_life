import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/utils/utils.dart';

class BeneficiariesScreen extends StatefulWidget {
  const BeneficiariesScreen({super.key});

  @override
  State<BeneficiariesScreen> createState() => _BeneficiariesScreenState();
}

class _BeneficiariesScreenState extends State<BeneficiariesScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _backgroundColor = AppColors.backgroundColor;

  late Future<List<Beneficiary>> _availableBeneficiaries;
  final List<_BeneficiaryAllocation> _allocations = [];

  int get _totalAllocation => _allocations.fold(
    0,
    (total, beneficiary) => total + beneficiary.percentage,
  );

  @override
  void initState() {
    super.initState();
    _availableBeneficiaries = GeneralRepository()
        .getBeneficiariesByLoggedInUser();
    _restoreAllocations();
  }

  void _restoreAllocations() {
    final message = context.read<GeneralBloc>().state.message;
    final saved = message['policy']?['beneficiaries'];
    if (saved is! List) return;

    for (final item in saved) {
      if (item is! Map) continue;
      final name = item['name']?.toString().trim() ?? '';
      final percentage =
          int.tryParse(
            (item['percentage'] ?? item['share'] ?? '').toString(),
          ) ??
          0;
      if (name.isNotEmpty && percentage > 0) {
        _allocations.add(
          _BeneficiaryAllocation(name: name, percentage: percentage),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              children: [
                _ScreenHeader(
                  hasBeneficiaries: _allocations.isNotEmpty,
                  onBack: () => context.pop(),
                  onAdd: _openAddBeneficiarySheet,
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 220),
                    child: _allocations.isEmpty
                        ? _EmptyBeneficiaries(
                            key: const ValueKey('empty'),
                            onAdd: _openAddBeneficiarySheet,
                            onLearnMore: _showBeneficiaryInfo,
                          )
                        : _SelectedBeneficiaries(
                            key: const ValueKey('selected'),
                            allocations: _allocations,
                            totalAllocation: _totalAllocation,
                            onRemove: _removeBeneficiary,
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

  Future<void> _openAddBeneficiarySheet() async {
    final remaining = 100 - _totalAllocation;
    if (remaining <= 0) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Your beneficiary allocation is already 100%.'),
          ),
        );
      return;
    }

    final beneficiary = await showModalBottomSheet<Beneficiary>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => _AddBeneficiarySheet(
        beneficiaries: _availableBeneficiaries,
        existingNames: _allocations.map((item) => item.name).toSet(),
        onRetry: () {
          setState(() {
            _availableBeneficiaries = GeneralRepository()
                .getBeneficiariesByLoggedInUser();
          });
          return _availableBeneficiaries;
        },
      ),
    );

    if (!mounted || beneficiary == null) return;
    final allocation = await showModalBottomSheet<_BeneficiaryAllocation>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _AllocationSheet(
        beneficiary: beneficiary,
        maximumPercentage: remaining,
      ),
    );
    if (!mounted || allocation == null) return;
    setState(() => _allocations.add(allocation));
    await _saveAllocations();
  }

  Future<void> _removeBeneficiary(_BeneficiaryAllocation beneficiary) async {
    setState(() => _allocations.remove(beneficiary));
    await _saveAllocations();
  }

  Future<void> _saveAllocations() async {
    final bloc = context.read<GeneralBloc>();
    final message = Map<String, dynamic>.from(bloc.state.message);
    final policy = Map<String, dynamic>.from(
      (message['policy'] as Map?) ?? const {},
    );
    policy['beneficiaries'] = _allocations
        .map(
          (beneficiary) => {
            'name': beneficiary.name,
            'percentage': beneficiary.percentage,
          },
        )
        .toList();
    message['policy'] = policy;
    await saveMessage(context, message);
  }

  Future<void> _showBeneficiaryInfo() {
    return showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        icon: Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
            color: Color(0xFFFFECEB),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.people_outline_rounded, color: _brandRed),
        ),
        title: const Text(
          'Who is a beneficiary?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _textColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: const Text(
          'A beneficiary is the person you nominate to receive the benefits from your policy. You can add more than one person and decide the percentage each person receives.',
          textAlign: TextAlign.center,
          style: TextStyle(color: _mutedColor, fontSize: 14, height: 1.5),
        ),
        actionsPadding: const EdgeInsets.fromLTRB(22, 4, 22, 22),
        actions: [
          SizedBox(
            width: double.infinity,
            height: 48,
            child: FilledButton(
              onPressed: () => Navigator.pop(dialogContext),
              style: FilledButton.styleFrom(
                backgroundColor: _brandRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: const Text('Got it'),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreenHeader extends StatelessWidget {
  const _ScreenHeader({
    required this.hasBeneficiaries,
    required this.onBack,
    required this.onAdd,
  });

  final bool hasBeneficiaries;
  final VoidCallback onBack;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 18, 12),
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: _BeneficiariesScreenState._textColor,
              size: 31,
            ),
          ),
          const SizedBox(width: 3),
          const Expanded(
            child: Text(
              'Beneficiaries',
              style: TextStyle(
                color: _BeneficiariesScreenState._textColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.3,
              ),
            ),
          ),
          if (hasBeneficiaries)
            TextButton.icon(
              onPressed: onAdd,
              style: TextButton.styleFrom(
                foregroundColor: _BeneficiariesScreenState._brandRed,
                backgroundColor: const Color(0xFFFFECEB),
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 9,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              icon: const Icon(Icons.add_rounded, size: 19),
              label: const Text(
                'Add',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
        ],
      ),
    );
  }
}

class _EmptyBeneficiaries extends StatelessWidget {
  const _EmptyBeneficiaries({
    super.key,
    required this.onAdd,
    required this.onLearnMore,
  });

  final VoidCallback onAdd;
  final VoidCallback onLearnMore;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 28),
      child: Column(
        children: [
          InkWell(
            onTap: onAdd,
            borderRadius: BorderRadius.circular(22),
            child: Ink(
              width: 216,
              height: 205,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: const Color(0xFFE5E7EC)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 20,
                    offset: Offset(0, 7),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _AddIcon(size: 76),
                  SizedBox(height: 18),
                  Text(
                    'Add Beneficiary',
                    style: TextStyle(
                      color: _BeneficiariesScreenState._textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Choose who receives your benefit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _BeneficiariesScreenState._mutedColor,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton.icon(
            onPressed: onLearnMore,
            style: OutlinedButton.styleFrom(
              foregroundColor: _BeneficiariesScreenState._textColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Color(0xFFE3E5EA)),
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            icon: const Icon(
              Icons.info_outline_rounded,
              color: _BeneficiariesScreenState._brandRed,
              size: 18,
            ),
            label: const Text(
              'Who is a beneficiary?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectedBeneficiaries extends StatelessWidget {
  const _SelectedBeneficiaries({
    super.key,
    required this.allocations,
    required this.totalAllocation,
    required this.onRemove,
  });

  final List<_BeneficiaryAllocation> allocations;
  final int totalAllocation;
  final ValueChanged<_BeneficiaryAllocation> onRemove;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 13, 20, 30),
      children: [
        const Text(
          'Your beneficiaries',
          style: TextStyle(
            color: _BeneficiariesScreenState._mutedColor,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 12),
        for (var index = 0; index < allocations.length; index++)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Dismissible(
                key: ValueKey(
                  '${allocations[index].name}-${allocations[index].percentage}',
                ),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: _BeneficiariesScreenState._brandRed,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 24),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Remove',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                onDismissed: (_) => onRemove(allocations[index]),
                child: _BeneficiaryRow(
                  beneficiary: allocations[index],
                  onRemove: () => onRemove(allocations[index]),
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
        _AllocationSummary(totalAllocation: totalAllocation),
      ],
    );
  }
}

class _AllocationSummary extends StatelessWidget {
  const _AllocationSummary({required this.totalAllocation});

  final int totalAllocation;

  @override
  Widget build(BuildContext context) {
    final isComplete = totalAllocation == 100;
    final progressColor = isComplete
        ? const Color(0xFF218C63)
        : _BeneficiariesScreenState._brandRed;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8E9ED)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: progressColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isComplete
                      ? Icons.check_rounded
                      : Icons.pie_chart_outline_rounded,
                  color: progressColor,
                  size: 18,
                ),
              ),
              const SizedBox(width: 11),
              const Expanded(
                child: Text(
                  'Total allocation',
                  style: TextStyle(
                    color: _BeneficiariesScreenState._textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                '$totalAllocation%',
                style: TextStyle(
                  color: progressColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: LinearProgressIndicator(
              minHeight: 7,
              value: (totalAllocation / 100).clamp(0, 1),
              backgroundColor: const Color(0xFFF0F1F4),
              valueColor: AlwaysStoppedAnimation(progressColor),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              isComplete
                  ? 'Your benefit has been fully allocated.'
                  : '${100 - totalAllocation}% is still available to allocate.',
              style: const TextStyle(
                color: _BeneficiariesScreenState._mutedColor,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BeneficiaryRow extends StatelessWidget {
  const _BeneficiaryRow({required this.beneficiary, required this.onRemove});

  final _BeneficiaryAllocation beneficiary;
  final VoidCallback onRemove;

  String get initials {
    final parts = beneficiary.name
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2);
    return parts.map((part) => part[0].toUpperCase()).join();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 16, 7, 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Color(0xFFFFFAF9)],
        ),
        border: Border.all(color: const Color(0xFFE7E8EC)),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Container(
            width: 47,
            height: 47,
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF22B22), Color(0xFFFF827B)],
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                initials,
                style: const TextStyle(
                  color: _BeneficiariesScreenState._brandRed,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  beneficiary.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _BeneficiariesScreenState._textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    Icon(
                      Icons.verified_user_outlined,
                      color: _BeneficiariesScreenState._mutedColor,
                      size: 13,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Policy beneficiary',
                      style: TextStyle(
                        color: _BeneficiariesScreenState._mutedColor,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFFE8E6), Color(0xFFFFF3F2)],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFFFD6D2)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.pie_chart_rounded,
                  color: _BeneficiariesScreenState._brandRed,
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  '${beneficiary.percentage}%',
                  style: const TextStyle(
                    color: _BeneficiariesScreenState._brandRed,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          PopupMenuButton<String>(
            tooltip: 'Beneficiary options',
            color: Colors.white,
            onSelected: (value) {
              if (value == 'remove') onRemove();
            },
            itemBuilder: (_) => const [
              PopupMenuItem(
                value: 'remove',
                child: Row(
                  children: [
                    Icon(Icons.delete_outline_rounded, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Remove'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'edit_allocation',
                child: Row(
                  children: [
                    Icon(Icons.edit_attributes, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Edit Allocation'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'edit_beneficiary',
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Edit Beneficiary'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AddBeneficiarySheet extends StatefulWidget {
  const _AddBeneficiarySheet({
    required this.beneficiaries,
    required this.existingNames,
    required this.onRetry,
  });

  final Future<List<Beneficiary>> beneficiaries;
  final Set<String> existingNames;
  final Future<List<Beneficiary>> Function() onRetry;

  @override
  State<_AddBeneficiarySheet> createState() => _AddBeneficiarySheetState();
}

class _AddBeneficiarySheetState extends State<_AddBeneficiarySheet> {
  late Future<List<Beneficiary>> _beneficiaries;

  @override
  void initState() {
    super.initState();
    _beneficiaries = widget.beneficiaries;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
      ),
      padding: EdgeInsets.fromLTRB(
        22,
        10,
        22,
        22 + MediaQuery.paddingOf(context).bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9DCE2),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 22),
          const Text(
            'Select a beneficiary',
            style: TextStyle(
              color: _BeneficiariesScreenState._textColor,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 7),
          const Text(
            'Choose one person from your beneficiary list.',
            style: TextStyle(
              color: _BeneficiariesScreenState._mutedColor,
              fontSize: 13,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),
          FutureBuilder<List<Beneficiary>>(
            future: _beneficiaries,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(
                  height: 120,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: _BeneficiariesScreenState._brandRed,
                    ),
                  ),
                );
              }

              if (snapshot.hasError) {
                return _SheetMessage(
                  message: 'Unable to load your beneficiaries.',
                  actionLabel: 'Retry',
                  onAction: () {
                    setState(() => _beneficiaries = widget.onRetry());
                  },
                );
              }

              final options = (snapshot.data ?? const <Beneficiary>[])
                  .where(
                    (beneficiary) =>
                        beneficiary.name != null &&
                        !widget.existingNames.contains(beneficiary.name),
                  )
                  .toList();
              if (options.isEmpty) {
                return const _SheetMessage(
                  message: 'There are no more beneficiaries to add.',
                );
              }

              const rowHeight = 68.0;
              final visibleRows = options.length.clamp(1, 5);
              return Container(
                height: rowHeight * visibleRows,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE8E9ED)),
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAlias,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: options.length,
                  separatorBuilder: (_, _) => const Divider(
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                    color: Color(0xFFEDEEF1),
                  ),
                  itemBuilder: (context, index) {
                    final beneficiary = options[index];
                    return _SelectableBeneficiaryRow(
                      beneficiary: beneficiary,
                      onTap: () => Navigator.pop(context, beneficiary),
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 50,
            child: OutlinedButton.icon(
              onPressed: _createBeneficiary,
              style: OutlinedButton.styleFrom(
                foregroundColor: _BeneficiariesScreenState._brandRed,
                backgroundColor: Colors.white,
                side: const BorderSide(
                  color: _BeneficiariesScreenState._brandRed,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              icon: const Icon(Icons.person_add_alt_1_rounded, size: 20),
              label: const Text(
                'Create new beneficiary',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _createBeneficiary() async {
    final beneficiary = await showModalBottomSheet<Beneficiary>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _CreateBeneficiarySheet(),
    );
    if (!mounted || beneficiary == null) return;
    Navigator.pop(context, beneficiary);
  }
}

class _SelectableBeneficiaryRow extends StatelessWidget {
  const _SelectableBeneficiaryRow({
    required this.beneficiary,
    required this.onTap,
  });

  final Beneficiary beneficiary;
  final VoidCallback onTap;

  String get initials {
    final name = beneficiary.name ?? '';
    final parts = name
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2);
    return parts.map((part) => part[0].toUpperCase()).join();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 67,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              CircleAvatar(
                radius: 19,
                backgroundColor: const Color(0xFFFFECEB),
                child: Text(
                  initials,
                  style: const TextStyle(
                    color: _BeneficiariesScreenState._brandRed,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  beneficiary.name ?? 'Unnamed beneficiary',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _BeneficiariesScreenState._textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: _BeneficiariesScreenState._mutedColor,
                size: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateBeneficiarySheet extends StatefulWidget {
  const _CreateBeneficiarySheet();

  @override
  State<_CreateBeneficiarySheet> createState() =>
      _CreateBeneficiarySheetState();
}

class _CreateBeneficiarySheetState extends State<_CreateBeneficiarySheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _relationshipController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();
  final _guardianNameController = TextEditingController();
  final _guardianPhoneController = TextEditingController();
  final _guardianAddress = TextEditingController();

  BeneficiaryGenderEnum? _gender;
  String? _relationship;
  DateTime? _dateOfBirth;
  bool _isSaving = false;
  String? _errorMessage;
  final List<String> _relationships = [
    'child',
    'spouse',
    'parent',
    'brother',
    'sister',
    'other',
  ];
  @override
  void dispose() {
    _nameController.dispose();
    _relationshipController.dispose();
    _phoneController.dispose();
    _dateController.dispose();
    _guardianNameController.dispose();
    _guardianPhoneController.dispose();
    _guardianAddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.9,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          22,
          10,
          22,
          18 + MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 44,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9DCE2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Create beneficiary',
                style: TextStyle(
                  color: _BeneficiariesScreenState._textColor,
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Enter the beneficiary’s personal details.',
                style: TextStyle(
                  color: _BeneficiariesScreenState._mutedColor,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 22),
              TextFormField(
                controller: _nameController,
                textCapitalization: TextCapitalization.words,
                decoration: _sheetInputDecoration(label: 'Full name'),
                validator: _requiredField,
              ),
              const SizedBox(height: 14),
              DropdownButtonFormField<String>(
                initialValue: _relationship,
                isExpanded: true,
                dropdownColor: Colors.white,
                decoration: _sheetInputDecoration(label: 'Relationship'),
                items: _relationships
                    .map(
                      (relationship) => DropdownMenuItem(
                        value: relationship,
                        child: Text(
                          '${relationship[0].toUpperCase()}${relationship.substring(1)}',
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _relationship = value;
                    if (value != 'other') {
                      _relationshipController.clear();
                    }
                  });
                },
                validator: (value) =>
                    value == null ? 'Select a relationship' : null,
              ),
              if (_relationship == 'other') ...[
                const SizedBox(height: 14),
                TextFormField(
                  controller: _relationshipController,
                  textCapitalization: TextCapitalization.words,
                  decoration: _sheetInputDecoration(
                    label: 'Specify relationship',
                  ),
                  validator: _requiredField,
                ),
              ],
              const SizedBox(height: 14),
              TextFormField(
                controller: _dateController,
                readOnly: true,
                onTap: _selectDateOfBirth,
                decoration: _sheetInputDecoration(
                  label: 'Date of birth',
                  suffix: const Icon(Icons.calendar_month_outlined, size: 20),
                ),
                validator: (_) =>
                    _dateOfBirth == null ? 'Select a date of birth' : null,
              ),
              const SizedBox(height: 14),
              DropdownButtonFormField<BeneficiaryGenderEnum>(
                initialValue: _gender,
                isExpanded: true,
                dropdownColor: Colors.white,
                decoration: _sheetInputDecoration(label: 'Gender'),
                items: const [
                  DropdownMenuItem(
                    value: BeneficiaryGenderEnum.male,
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: BeneficiaryGenderEnum.female,
                    child: Text('Female'),
                  ),
                ],
                onChanged: (value) => setState(() => _gender = value),
                validator: (value) => value == null ? 'Select a gender' : null,
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: _sheetInputDecoration(label: 'Phone number'),
                validator: (value) {
                  final phone = value?.trim() ?? '';
                  if (phone.isEmpty) return 'Enter a phone number';
                  if (phone.length < 10) return 'Enter a valid phone number';
                  return null;
                },
              ),
              if (age(_dateOfBirth) < 18) ...[
                const SizedBox(height: 14),
                const Text(
                  'Guardian details',
                  style: TextStyle(
                    color: _BeneficiariesScreenState._textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: _guardianNameController,
                  decoration: _sheetInputDecoration(label: 'Guardian name'),
                  validator: _requiredField,
                ),
                const SizedBox(height: 14),

                TextFormField(
                  controller: _guardianPhoneController,
                  decoration: _sheetInputDecoration(
                    label: 'Guardian phone number',
                  ),
                  validator: _requiredField,
                ),
                const SizedBox(height: 14),

                TextFormField(
                  controller: _guardianAddress,
                  minLines: 3,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: _sheetInputDecoration(label: 'Guardian address'),
                  validator: _requiredField,
                ),
                const SizedBox(height: 14),
              ],
              if (_errorMessage != null) ...[
                const SizedBox(height: 12),
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
              const SizedBox(height: 22),
              SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: _isSaving ? null : _submit,
                  style: FilledButton.styleFrom(
                    backgroundColor: _BeneficiariesScreenState._brandRed,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: _isSaving
                      ? const SizedBox.square(
                          dimension: 21,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.3,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Create beneficiary',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _requiredField(String? value) =>
      value == null || value.trim().isEmpty ? 'This field is required' : null;

  Future<void> _selectDateOfBirth() async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth ?? DateTime(now.year - 18),
      firstDate: DateTime(1900),
      lastDate: now,
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: _BeneficiariesScreenState._brandRed,
          ),
        ),
        child: child!,
      ),
    );
    if (selected == null) return;
    setState(() {
      _dateOfBirth = selected;
      _dateController.text =
          '${selected.day.toString().padLeft(2, '0')}/'
          '${selected.month.toString().padLeft(2, '0')}/${selected.year}';
    });
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final beneficiary = Beneficiary(
      (builder) => builder
        ..name = _nameController.text.trim()
        ..relationship = _relationship == 'other'
            ? _relationshipController.text.trim()
            : _relationship
        ..dateOfBirth = _dateOfBirth!.toDate()
        ..gender = _gender
        ..phone = _phoneController.text.trim(),
    );

    setState(() {
      _isSaving = true;
      _errorMessage = null;
    });
    try {
      await GeneralRepository().createBeneficiary(beneficiary);
      if (mounted) Navigator.pop(context, beneficiary);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isSaving = false;
        _errorMessage = 'Unable to create beneficiary. Please try again.';
      });
    }
  }

  int age(DateTime? dateOfBirth) {
    if (dateOfBirth == null) return 18;
    final today = DateTime.now();
    var years = today.year - dateOfBirth.year;
    final birthdayHasPassed =
        today.month > dateOfBirth.month ||
        (today.month == dateOfBirth.month && today.day >= dateOfBirth.day);
    if (!birthdayHasPassed) years--;
    return years;
  }
}

class _AllocationSheet extends StatefulWidget {
  const _AllocationSheet({
    required this.beneficiary,
    required this.maximumPercentage,
  });

  final Beneficiary beneficiary;
  final int maximumPercentage;

  @override
  State<_AllocationSheet> createState() => _AllocationSheetState();
}

class _AllocationSheetState extends State<_AllocationSheet> {
  final _formKey = GlobalKey<FormState>();
  final _percentageController = TextEditingController();

  @override
  void dispose() {
    _percentageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
      ),
      padding: EdgeInsets.fromLTRB(
        22,
        10,
        22,
        18 + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 44,
                height: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9DCE2),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Text(
              'Set allocation',
              style: TextStyle(
                color: _BeneficiariesScreenState._textColor,
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              'Enter the percentage ${widget.beneficiary.name ?? 'this beneficiary'} should receive.',
              style: const TextStyle(
                color: _BeneficiariesScreenState._mutedColor,
                fontSize: 13,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 22),
            TextFormField(
              controller: _percentageController,
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: _sheetInputDecoration(
                label: 'Percentage allocation',
                suffix: const Text('%'),
              ),
              validator: (value) {
                final percentage = int.tryParse(value?.trim() ?? '');
                if (percentage == null || percentage <= 0) {
                  return 'Enter a valid percentage';
                }
                if (percentage > widget.maximumPercentage) {
                  return 'Maximum available is ${widget.maximumPercentage}%';
                }
                return null;
              },
              onFieldSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 22),
            SizedBox(
              height: 50,
              child: FilledButton(
                onPressed: _submit,
                style: FilledButton.styleFrom(
                  backgroundColor: _BeneficiariesScreenState._brandRed,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: const Text(
                  'Add beneficiary',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    Navigator.pop(
      context,
      _BeneficiaryAllocation(
        name: widget.beneficiary.name!,
        percentage: int.parse(_percentageController.text.trim()),
      ),
    );
  }
}

class _SheetMessage extends StatelessWidget {
  const _SheetMessage({required this.message, this.actionLabel, this.onAction});

  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: _BeneficiariesScreenState._mutedColor,
                fontSize: 13,
              ),
            ),
          ),
          if (onAction != null)
            TextButton(onPressed: onAction, child: Text(actionLabel!)),
        ],
      ),
    );
  }
}

class _AddIcon extends StatelessWidget {
  const _AddIcon({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFFFFECEB),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.add_rounded,
        color: _BeneficiariesScreenState._brandRed,
        size: 40,
      ),
    );
  }
}

class _BeneficiaryAllocation {
  const _BeneficiaryAllocation({required this.name, required this.percentage});

  final String name;
  final int percentage;
}

InputDecoration _sheetInputDecoration({required String label, Widget? suffix}) {
  return InputDecoration(
    labelText: label,
    labelStyle: const TextStyle(
      color: _BeneficiariesScreenState._mutedColor,
      fontSize: 13,
    ),
    suffixIcon: suffix == null ? null : Center(widthFactor: 1, child: suffix),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFE2E4E9)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFE2E4E9)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _BeneficiariesScreenState._brandRed),
    ),
  );
}
