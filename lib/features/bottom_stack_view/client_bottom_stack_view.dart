import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/widgets/widgets.dart';

final bottomStackViewProvider =
    NotifierProvider<BottomStackViewController, int>(
      BottomStackViewController.new,
    );

class BottomStackViewController extends Notifier<int> {
  @override
  int build() => 0;

  void goTo(int index) => state = index;
}

class ClientBottomStackView extends ConsumerWidget {
  const ClientBottomStackView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomStackViewProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("I am client_bottom_stack_view")),
      bottomNavigationBar: FloatingPillNavBar(
        selectedIndex: selectedIndex,
        onTabChange: (index) =>
            ref.read(bottomStackViewProvider.notifier).goTo(index),
        tabs: [
          NavBarTabItem(
            index: 0,
            selectedIndex: selectedIndex,
            // activeIcon: Assets.icons.bottomNavbar.home,
            // inactiveIcon: Assets.icons.bottomNavbar.homeOutline,
            text: 'Home',
          ),
          NavBarTabItem(
            index: 1,
            selectedIndex: selectedIndex,
            // activeIcon: Assets.icons.bottomNavbar.searchOutline,
            // inactiveIcon: Assets.icons.bottomNavbar.searchOutline,
            text: 'Search',
          ),
          NavBarTabItem(
            index: 2,
            selectedIndex: selectedIndex,
            // activeIcon: Assets.icons.bottomNavbar.brifcase,
            // inactiveIcon: Assets.icons.bottomNavbar.brifcaseOutline,
            text: 'Jobs',
          ),
          NavBarTabItem(
            index: 3,
            selectedIndex: selectedIndex,
            // activeIcon: Assets.icons.bottomNavbar.chatOutline,
            // inactiveIcon: Assets.icons.bottomNavbar.chatOutline,
            text: 'Chat',
          ),
          NavBarTabItem(
            index: 4,
            selectedIndex: selectedIndex,
            // activeIcon: Assets.icons.bottomNavbar.personOutline,
            // inactiveIcon: Assets.icons.bottomNavbar.personOutline,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
