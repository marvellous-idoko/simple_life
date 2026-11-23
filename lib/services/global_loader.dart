import 'package:flutter/material.dart';
import 'package:simple_life/colors/app_colors.dart';

/// Full-screen loading overlay driven by [LoadingInterceptor] (ref-counted).
class GlobalLoader {
  GlobalLoader._();

  static final GlobalLoader instance = GlobalLoader._();

  GlobalKey<NavigatorState>? _navigatorKey;
  int _pending = 0;
  OverlayEntry? _entry;

  void bindNavigatorKey(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
  }

  void show() {
    _pending++;
    if (_pending == 1) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _insertOverlay());
    }
  }

  void hide() {
    if (_pending > 0) {
      _pending--;
    }
    if (_pending == 0) {
      _removeOverlay();
    }
  }

  void _insertOverlay() {
    if (_pending == 0 || _entry != null) return;

    final overlay = _navigatorKey?.currentState?.overlay;
    if (overlay == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_pending > 0 && _entry == null) {
          _insertOverlay();
        }
      });
      return;
    }

    _entry = OverlayEntry(
      builder: (context) => AbsorbPointer(
        child: Material(
          color: Colors.black.withValues(alpha: 0.35),
          child: const Center(
            child: _LoaderCard(),
          ),
        ),
      ),
    );
    overlay.insert(_entry!);
  }

  void _removeOverlay() {
    _entry?.remove();
    _entry = null;
  }
}

class _LoaderCard extends StatelessWidget {
  const _LoaderCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(
            color: AppColors.primary,
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}