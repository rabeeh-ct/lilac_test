import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lilac_test/utils/extentions.dart';
import 'package:lilac_test/view/screens/dashboard_screen/components/dashboard_card.dart';
import 'package:lilac_test/view/theme/colors.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/menu_icon.png"),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/notification_icon.png")),
          // 10.sBW,
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: const [
          DashboardCard(
            title: "Total Vehicle",
            number: "100",
            imagePath: "assets/images/total_vehicle_image.png",
            backgroundColor: Color(0xff36B3CE),
          ),
          DashboardCard(
            title: "Total Bookings",
            number: "50",
            imagePath: "assets/images/total_bookings_image.png",
            backgroundColor: Color(0xff36CE85),
          ),
          DashboardCard(
            title: "C2B Concept",
            number: "25",
            imagePath: "assets/images/total_vehicle_image.png",
            backgroundColor: Color(0xffCE3636),
          ),
          DashboardCard(
            title: "Vehicle for Sale",
            number: "35",
            imagePath: "assets/images/total_vehicle_image.png",
            backgroundColor: Color(0xff3645CE),
          ),
        ],
      ),
    );
  }
}
