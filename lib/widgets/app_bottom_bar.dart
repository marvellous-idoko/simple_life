import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  static const _brandRed = Color(0xFFF22B22);
  static const _inactiveColor = Color(0xFFA4A9B3);

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82 + MediaQuery.paddingOf(context).bottom,
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 18,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _BottomItem(
              icon: Icons.home_outlined,
              label: 'Home',
              selected: currentIndex == 0,
              onTap: () => onTap(0),
            ),
          ),
          Expanded(
            child: _BottomItem(
              icon: Icons.description_outlined,
              label: 'Policies',
              selected: currentIndex == 1,
              onTap: () => onTap(1),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -16),
              child: _BuyItem(
                selected: currentIndex == 2,
                onTap: () => onTap(2),
              ),
            ),
          ),
          Expanded(
            child: _BottomItem(
              icon: Icons.account_balance_wallet_outlined,
              label: 'Wallet',
              selected: currentIndex == 3,
              onTap: () => onTap(3),
            ),
          ),
          Expanded(
            child: _BottomItem(
              icon: Icons.person_outline_rounded,
              label: 'Profile',
              selected: currentIndex == 4,
              onTap: () => onTap(4),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  const _BottomItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? AppBottomBar._brandRed
        : AppBottomBar._inactiveColor;

    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 23),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 10,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class _BuyItem extends StatelessWidget {
  const _BuyItem({required this.selected, required this.onTap});

  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
        showBuyMenu(context);
      },
      customBorder: const CircleBorder(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: AppBottomBar._brandRed,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x42F22B22),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(Icons.add_rounded, color: Colors.white, size: 29),
          ),
          const SizedBox(height: 4),
          Text(
            'Buy',
            style: TextStyle(
              color: selected
                  ? AppBottomBar._brandRed
                  : AppBottomBar._inactiveColor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showBuyMenu(BuildContext context) {
  final bottomInset = MediaQuery.paddingOf(context).bottom;

  return showDialog<void>(
    context: context,
    barrierColor: Colors.black.withValues(alpha: 0.24),
    builder: (dialogContext) {
      return Dialog(
        alignment: Alignment.bottomCenter,
        backgroundColor: Colors.transparent,
        elevation: 0,
        insetPadding: EdgeInsets.fromLTRB(16, 24, 16, 66 + bottomInset),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 360),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(17, 20, 17, 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x24000000),
                      blurRadius: 24,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9EA3AD),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const _BuyMenuHeader(),
                    const SizedBox(height: 37),
                    Row(
                      children: [
                        Expanded(
                          child: _InsuranceOptionCard(
                            title: 'General Insurance',
                            icon: Icons.shield_outlined,
                            colors: const [
                              Color(0xFF242526),
                              Color(0xFF151516),
                            ],
                            tagRows: const [
                              ['Motor', 'Travel'],
                              ['Home'],
                            ],
                            onTap: () =>
                                _selectInsurance(context, dialogContext, Company['HIL']!),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: _InsuranceOptionCard(
                            title: 'Life Insurance',
                            icon: Icons.favorite_rounded,
                            colors: const [
                              Color(0xFF5B4B50),
                              Color(0xFFF42B21),
                            ],
                            tagRows: const [
                              ['Heirs Secure Plan'],
                              ['Salary Plus'],
                            ],
                            onTap: () =>
                                _selectInsurance(context, dialogContext, Company['HLA']!),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 33),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: TextButton(
                        onPressed: () => Navigator.pop(dialogContext),
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFF7F8490),
                          backgroundColor: const Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -11,
                child: ClipPath(
                  clipper: _TriangleClipper(),
                  child: const ColoredBox(
                    color: Colors.white,
                    child: SizedBox(width: 24, height: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _selectInsurance(
  BuildContext navigationContext,
  BuildContext dialogContext,
  String insuranceType,
) {
  final message = navigationContext.read<GeneralBloc>().state.message;
  print(message);
  if(message['customer']?['isSelected'] == true) {
    if(insuranceType == Company['HLA']) {
      // dialogContext.go(AppRoutes.lifeProducts);
    } else {
      // dialogContext.go(AppRoutes.generalProducts);
    }
  } else {
    dialogContext.go(AppRoutes.selectProfile);
  }
}

class _BuyMenuHeader extends StatelessWidget {
  const _BuyMenuHeader();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _ProfileAvatar(),
        SizedBox(width: 11),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What would you like to buy?',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF4F5055),
                  fontSize: 15,
                  height: 1.15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Choose a plan to get started',
                style: TextStyle(
                  color: Color(0xFF8A8F99),
                  fontSize: 11,
                  height: 1.2,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: AppBottomBar._brandRed,
        shape: BoxShape.circle,
      ),
      child: const CircleAvatar(
        backgroundColor: Color(0xFFF1C6A8),
        child: Icon(Icons.person_rounded, color: Color(0xFF513329), size: 27),
      ),
    );
  }
}

class _InsuranceOptionCard extends StatelessWidget {
  const _InsuranceOptionCard({
    required this.title,
    required this.icon,
    required this.colors,
    required this.tagRows,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final List<Color> colors;
  final List<List<String>> tagRows;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 10, 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 33,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: Colors.white, size: 19),
                ),
                const Spacer(),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                for (var index = 0; index < tagRows.length; index++) ...[
                  Row(
                    children: [
                      for (final tag in tagRows[index]) ...[
                        Flexible(child: _InsuranceTag(label: tag)),
                        if (tag != tagRows[index].last)
                          const SizedBox(width: 4),
                      ],
                      if (index == tagRows.length - 1) ...[
                        const Spacer(),
                        Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.18),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ],
                    ],
                  ),
                  if (index != tagRows.length - 1) const SizedBox(height: 6),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InsuranceTag extends StatelessWidget {
  const _InsuranceTag({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 8,
          height: 1.1,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class _TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
