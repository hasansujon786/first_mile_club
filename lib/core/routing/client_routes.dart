import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_names.dart';

final clientRoutes = [
  GoRoute(
    path: Routes.clientParent,
    builder: (context, state) => const Text("adsf"),
    // builder: (context, state) => const ClientBottomStackView(),
  ),
];
