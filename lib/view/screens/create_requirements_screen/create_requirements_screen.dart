import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lilac_test/controller/login_controller.dart';
import 'package:lilac_test/view/routes/app_router.gr.dart';

import '../../theme/colors.dart';

@RoutePage()
class CreateRequirementsScreen extends StatelessWidget {
  const CreateRequirementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text("What would you prefer to have?"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5),
        children: [
          InkWell(
            onTap: () {
              context.pushRoute(AddRequirementsRoute(vehicleTypeId: 1));
            },
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1), //rgba(0, 0, 0, 0.05)
                    offset: Offset(9, 9),
                    blurRadius: 30,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/car_image.png"),
                  const Text(
                    "Car",
                    style: TextStyle(
                        fontSize: 16, color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.pushRoute(AddRequirementsRoute(vehicleTypeId: 2));
            },
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1), //rgba(0, 0, 0, 0.05)
                    offset: Offset(9, 9),
                    blurRadius: 30,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/bike_image.png"),
                  const Text(
                    "Bike",
                    style: TextStyle(
                        fontSize: 16, color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
