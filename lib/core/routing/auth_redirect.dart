import 'package:first_mile_club/features/auth/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'public_routes.dart';
import 'route_names.dart';

class AuthChangeNotifier extends ChangeNotifier {
  void notify() {
    notifyListeners();
  }
}

String? authRedirect(Ref ref, GoRouterState state) {
  final authState = ref.read(authStateProvider);
  final location = state.matchedLocation;
  final isPublicRoute = publicRoutePaths.contains(location);

  if (authState.isLoading) {
    return Routes.splash;
  }

  if (!authState.isAuthenticated) {
    if (isPublicRoute) return null;
    return Routes.signIn;
  }

  if (authState.isAuthenticated && isPublicRoute) {
    return Routes.clientParent;
  }

  return null;
}
