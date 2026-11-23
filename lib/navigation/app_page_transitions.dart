import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _slideDuration = Duration(milliseconds: 320);

/// Forward: new page from the right; back: reverses. Under-route shifts slightly left.
CustomTransitionPage<T> slideHorizontalPage<T>({
  required LocalKey key,
  required Widget child,
  Duration transitionDuration = _slideDuration,
  Duration reverseTransitionDuration = _slideDuration,
}) {
  return CustomTransitionPage<T>(
    key: key,
    transitionDuration: transitionDuration,
    reverseTransitionDuration: reverseTransitionDuration,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final slideIn = Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
      );

      final slideUnder = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-0.06, 0),
      ).animate(
        CurvedAnimation(parent: secondaryAnimation, curve: Curves.easeOutCubic),
      );

      return SlideTransition(
        position: slideUnder,
        child: SlideTransition(position: slideIn, child: child),
      );
    },
  );
}

GoRoute slideGoRoute({
  required String path,
  required Widget Function(BuildContext context, GoRouterState state) child,
  List<RouteBase> routes = const [],
}) {
  return GoRoute(
    path: path,
    routes: routes,
    pageBuilder: (context, state) => slideHorizontalPage(
      key: state.pageKey,
      child: child(context, state),
    ),
  );
}