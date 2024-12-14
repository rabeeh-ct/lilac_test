import 'package:flutter/material.dart';
import 'package:lilac_test/view/theme/colors.dart';

import '../../../../model/requirements_response.dart';

class RequirementCard extends StatelessWidget {
  const RequirementCard(this.requirement, {super.key});

  final Datum requirement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            requirement.vehicleModel?.name ?? "",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: blackColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transmission",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: lightGreyColor,
                ),
              ),
              Text(
                requirement.transmission?.name ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fuel",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: lightGreyColor,
                ),
              ),
              Text(
                requirement.fuelType?.name ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Color",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: lightGreyColor,
                ),
              ),
              Text(
                requirement.vehicleColor?.name ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
            ],
          ),

          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: true,
            onChanged: (value) {},
            title: Text(
              "Active",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: blackColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
