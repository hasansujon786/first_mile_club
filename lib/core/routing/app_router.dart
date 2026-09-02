import 'package:first_mile_club/features/auth/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'auth_redirect.dart';
import 'client_routes.dart';
import 'public_routes.dart';
import 'route_names.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final allRoutes = [...publicRoutes, ...clientRoutes];

final goRouterProvider = Provider<GoRouter>((ref) {
  final authNotifier = AuthChangeNotifier();

  ref.listen(authStateProvider, (_, _) {
    authNotifier.notify();
  });

  ref.onDispose(authNotifier.dispose);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.splash,
    refreshListenable: authNotifier,
    redirect: (context, state) => authRedirect(ref, state),
    routes: allRoutes,
  );
});
