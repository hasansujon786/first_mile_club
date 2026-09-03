import 'package:first_mile_club/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  //final prefs = await Sharedpreferences.getInstance();
  //final onboardingCompleted = prefs.getBool('onboarding_completed')?? false;

  final onboardingCompleted = false;
  runApp(ProviderScope(child: MyApp(onboardingCompleted: onboardingCompleted)));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key, required this.onboardingCompleted});
  final bool onboardingCompleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return (MaterialApp.router(
      routerConfig: router,
      // theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
    ));
  }
}
