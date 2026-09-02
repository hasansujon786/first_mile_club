import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthStatus { loading, authenticated, unauthenticated }

class AuthState {
  final AuthStatus status;

  const AuthState(this.status);

  bool get isLoading => status == AuthStatus.loading;
  bool get isAuthenticated => status == AuthStatus.authenticated;
}

final authStateProvider = NotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
);

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() {
    _initialize();
    return const AuthState(AuthStatus.loading);
  }

  Future<void> _initialize() async {
    final isLoggedIn = await _checkSession();

    state = AuthState(
      isLoggedIn ? AuthStatus.authenticated : AuthStatus.unauthenticated,
    );
  }

  Future<bool> _checkSession() async {
    // Your actual session check
    // Check token / session / SharedPreferences etc.

    return true;
  }

  Future<void> login() async {
    // API call...

    state = const AuthState(AuthStatus.authenticated);
  }

  Future<void> logout() async {
    // Remove token...

    state = const AuthState(AuthStatus.unauthenticated);
  }
}
