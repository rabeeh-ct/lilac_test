import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.title,
    required this.number,
    required this.imagePath,
    required this.backgroundColor,
  });

  final String title;
  final String number;
  final String imagePath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CircleAvatar(
            radius: 33,
            backgroundColor: backgroundColor,
            child: Image.asset(imagePath),
          ),
          Text(
            number,
            style: const TextStyle(fontSize: 24, color: blackColor, fontWeight: FontWeight.w700),
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14, color: lightGreyColor, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
