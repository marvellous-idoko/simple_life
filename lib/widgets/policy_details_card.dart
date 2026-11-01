import 'package:flutter/material.dart';
import 'package:simple_life/colors/app_colors.dart';

class PolicyDetailItem {
  const PolicyDetailItem({required this.label, required this.value});

  final String label;
  final String value;
}

class PolicyDetailsCard extends StatelessWidget {
  const PolicyDetailsCard({
    required this.details,
    this.total = '0',
    this.title = 'Policy Details',
    this.totalLabel = 'Total',
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.surface,
    super.key,
  });

  final String title;
  final List<PolicyDetailItem> details;
  final String totalLabel;
  final String total;
  final Color backgroundColor;
  final Color textColor;

  bool get _hasTotal => total != '0';
  bool get _hasMoreDetails => details.length > 5;

  @override
  Widget build(BuildContext context) {
    final visibleDetails = details.take(5).toList(growable: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Semantics(
        container: true,
        label: title,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(22, 25, 22, 27),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 22,
                  height: 1.15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.25,
                ),
              ),
              const SizedBox(height: 22),
              for (var index = 0; index < visibleDetails.length; index++) ...[
                _PolicyDetailRow(
                  item: visibleDetails[index],
                  textColor: textColor,
                ),
                if (index != visibleDetails.length - 1)
                  const SizedBox(height: 20),
              ],
              if (_hasMoreDetails) ...[
                const SizedBox(height: 11),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () => _showAllDetails(context),
                    style: TextButton.styleFrom(
                      foregroundColor: textColor,
                      // backgroundColor: textColor.withValues(alpha: 0.12),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    // icon: const Icon(Icons.unfold_more_rounded, size: 16),
                    label: Text(
                      'See More',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: backgroundColor == AppColors.backgroundMuted ? AppColors.primary : textColor
                      ),
                    ),
                  ),
                ),
              ],

              if (_hasTotal) ...[
                const SizedBox(height: 23),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: textColor.withValues(alpha: 0.7),
                ),
                const SizedBox(height: 22),
                _PolicyTotalRow(
                  label: totalLabel,
                  value: total,
                  textColor: textColor,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAllDetails(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => _PolicyDetailsSheet(
        title: title,
        details: details,
        totalLabel: totalLabel,
        total: total,
        hasTotal: _hasTotal,
      ),
    );
  }
}

class _PolicyDetailRow extends StatelessWidget {
  const _PolicyDetailRow({required this.item, required this.textColor});

  final PolicyDetailItem item;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            item.label,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              height: 1.3,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: Text(
            item.value,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              height: 1.3,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

class _PolicyTotalRow extends StatelessWidget {
  const _PolicyTotalRow({
    required this.label,
    required this.value,
    required this.textColor,
  });

  final String label;
  final String value;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: textColor,
              fontSize: 21,
              height: 1.15,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.25,
            ),
          ),
        ),
      ],
    );
  }
}

class _PolicyDetailsSheet extends StatelessWidget {
  const _PolicyDetailsSheet({
    required this.title,
    required this.details,
    required this.totalLabel,
    required this.total,
    required this.hasTotal,
  });

  final String title;
  final List<PolicyDetailItem> details;
  final String totalLabel;
  final String total;
  final bool hasTotal;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.86,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9DCE2),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 18, 14, 16),
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECEB),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: const Icon(
                      Icons.description_outlined,
                      color: AppColors.primary,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.25,
                          ),
                        ),

                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFF3F4F6),
                    ),
                    icon: const Icon(
                      Icons.close_rounded,
                      color: AppColors.textColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xFFEDEEF1)),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
                itemCount: details.length,
                separatorBuilder: (_, _) => const SizedBox(height: 10),
                itemBuilder: (context, index) =>
                    _SheetDetailRow(item: details[index]),
              ),
            ),
            if (hasTotal)
              Container(
                padding: const EdgeInsets.fromLTRB(22, 16, 22, 18),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF7F6),
                  border: Border(top: BorderSide(color: Color(0xFFFFDEDB))),
                ),
                child: SafeArea(
                  top: false,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          totalLabel,
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Text(
                          total,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SheetDetailRow extends StatelessWidget {
  const _SheetDetailRow({required this.item});

  final PolicyDetailItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFB),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEDEEF1)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              item.label,
              style: const TextStyle(
                color: AppColors.mutedColor,
                fontSize: 13,
                height: 1.35,
              ),
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Text(
              item.value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                color: AppColors.textColor,
                fontSize: 14,
                height: 1.35,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}