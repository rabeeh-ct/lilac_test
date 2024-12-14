import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/controller/navigation_controller.dart';
import 'package:lilac_test/view/screens/dashboard_screen/dashboard_screen.dart';
import 'package:lilac_test/view/screens/requirment_screen/requirement_screen.dart';
import 'package:lilac_test/view/theme/colors.dart';

@RoutePage()
class NavigationScreen extends ConsumerWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationController = ref.watch(navigationControllerProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationController.value ?? 0,
        onTap: ref.read(navigationControllerProvider.notifier).changeTap,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          color: primaryColor,
        ),
        fixedColor: primaryColor,
        unselectedItemColor: primaryColor,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Image.asset("assets/images/home_icon.png"),
          ),
          BottomNavigationBarItem(
            label: "Message",
            icon: Image.asset("assets/images/message_icon.png"),
          ),
          BottomNavigationBarItem(
            label: "Sell",
            icon: Image.asset(
              "assets/images/sell_icon.png",
              color: primaryColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "Requirement",
            icon: Image.asset("assets/images/requirements_icon.png"),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Image.asset("assets/images/profile_icon.png"),
          ),
        ],
      ),
      body: Body(index: navigationController.value??0),
      // body: navigationController.value == 0 ? DashboardScreen() : SizedBox(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    switch (index){
      case 0:
        return const DashboardScreen();
      case 3:
        return const RequirementScreen();
    }

    return const SizedBox();
  }
}
