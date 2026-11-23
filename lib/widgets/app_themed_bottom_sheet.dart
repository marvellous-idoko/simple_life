import 'package:flutter/material.dart';
import 'package:simple_life/colors/app_colors.dart';

/// Result of [showAppThemedBottomSheet]:
/// - `true` — primary (custom) action tapped
/// - `false` — OK, Cancel, or barrier dismiss
enum AppBottomSheetTheme { success, warning, error }

class _ThemeSpec {
  const _ThemeSpec({
    required this.avatarBackground,
    required this.avatarIconColor,
    required this.icon,
  });

  final Color avatarBackground;
  final Color avatarIconColor;
  final IconData icon;

  static _ThemeSpec forTheme(AppBottomSheetTheme theme) {
    return switch (theme) {
      AppBottomSheetTheme.success => const _ThemeSpec(
          avatarBackground: Color(0xFFE8F7EE),
          avatarIconColor: Color(0xFF16A34A),
          icon: Icons.check_rounded,
        ),
      AppBottomSheetTheme.warning => const _ThemeSpec(
          avatarBackground: Color(0xFFFFF4E5),
          avatarIconColor: Color(0xFFD97706),
          icon: Icons.warning_amber_rounded,
        ),
      AppBottomSheetTheme.error => const _ThemeSpec(
          avatarBackground: Color(0xFFFFEAE8),
          avatarIconColor: AppColors.primary,
          icon: Icons.close_rounded,
        ),
    };
  }
}

/// Shows a themed status bottom sheet (success / warning / error).
///
/// With [primaryActionLabel], shows **[primaryActionLabel]** (returns `true`) and **Cancel** (returns `false`).
/// Otherwise shows a single **OK** button (returns `false`).
Future<bool> showAppThemedBottomSheet(
  BuildContext context, {
  required AppBottomSheetTheme theme,
  required String message,
  String? title,
  String okLabel = 'OK',
  String? primaryActionLabel,
  bool barrierDismissible = true,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    isDismissible: barrierDismissible,
    enableDrag: barrierDismissible,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.48),
    builder: (sheetContext) => AppThemedBottomSheet(
      theme: theme,
      message: message,
      title: title,
      okLabel: okLabel,
      primaryActionLabel: primaryActionLabel,
    ),
  ).then((value) => value ?? false);
}

class AppThemedBottomSheet extends StatelessWidget {
  const AppThemedBottomSheet({
    super.key,
    required this.theme,
    required this.message,
    this.title,
    this.okLabel = 'OK',
    this.primaryActionLabel,
  });

  final AppBottomSheetTheme theme;
  final String message;
  final String? title;
  final String okLabel;
  final String? primaryActionLabel;

  bool get _hasPrimaryAction =>
      primaryActionLabel != null && primaryActionLabel!.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final spec = _ThemeSpec.forTheme(theme);
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    return Align(
      alignment: Alignment.bottomCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 520),
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 6),
                      Container(
                        width: 44,
                        height: 5,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9DCE2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          color: spec.avatarBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          spec.icon,
                          color: spec.avatarIconColor,
                          size: 28,
                        ),
                      ),
                      if (title != null && title!.trim().isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Text(
                          title!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.3,
                            height: 1.25,
                          ),
                        ),
                      ],
                      const SizedBox(height: 12),
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColors.mutedColor,
                          fontSize: 14,
                          height: 1.55,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 12, 24, 16 + bottomInset),
                child: _buildActions(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    const buttonHeight = 50.0;
    const radius = BorderRadius.all(Radius.circular(14));

    if (_hasPrimaryAction) {
      return Row(
        children: [
          Expanded(
            child: SizedBox(
              height: buttonHeight,
              child: OutlinedButton(
                onPressed: () => Navigator.of(context).pop(false),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  side: const BorderSide(color: AppColors.primary),
                  shape: const RoundedRectangleBorder(borderRadius: radius),
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: SizedBox(
              height: buttonHeight,
              child: FilledButton(
                onPressed: () => Navigator.of(context).pop(true),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(borderRadius: radius),
                ),
                child: Text(
                  primaryActionLabel!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return SizedBox(
      width: double.infinity,
      height: buttonHeight,
      child: FilledButton(
        onPressed: () => Navigator.of(context).pop(false),
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: radius),
        ),
        child: Text(
          okLabel,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}