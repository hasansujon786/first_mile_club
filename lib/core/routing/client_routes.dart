import 'package:first_mile_club/features/bottom_stack_view/client_bottom_stack_view.dart';
import 'package:go_router/go_router.dart';

import 'route_names.dart';

final clientRoutes = [
  GoRoute(
    path: Routes.clientParent,
    builder: (context, state) => const ClientBottomStackView(),
  ),
];
