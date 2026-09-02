import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_names.dart';

final publicRoutePaths = {
  Routes.splash,
  Routes.onboarding,
  Routes.signIn,
  Routes.signUp,
  Routes.forgotPassword,
  Routes.otp,
  Routes.resetPassword,
};

final publicRoutes = [
  GoRoute(
    path: Routes.splash,
    builder: (context, state) =>
        const Scaffold(body: Center(child: CircularProgressIndicator())),
  ),
  GoRoute(
    path: Routes.onboarding,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('onboarding'))),
  ),
  GoRoute(
    path: Routes.signIn,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Sign In'))),
  ),
  GoRoute(
    path: Routes.signUp,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Sign Up'))),
  ),
  GoRoute(
    path: Routes.forgotPassword,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Forgot Password'))),
  ),
  GoRoute(
    path: Routes.otp,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('OTP'))),
  ),
  GoRoute(
    path: Routes.resetPassword,
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Reset Password'))),
  ),
];
