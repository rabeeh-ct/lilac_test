import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/controller/add_requirements_screen_controller.dart';
import 'package:lilac_test/utils/extentions.dart';

import '../../../model/brand_details_response.dart';
import '../../../model/model_details_response.dart';
import '../../theme/colors.dart';
import '../../widgets/default_button.dart';
import 'components/common_drop_down.dart';

@RoutePage()
class AddRequirementsScreen extends ConsumerWidget {
  const AddRequirementsScreen({super.key, required this.vehicleTypeId});

  final int vehicleTypeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(addRequirementsScreenControllerProvider(vehicleTypeId));
    final brandDetails = ref.watch(brandDetailsResponseProvider);
    final modelDetails = ref.watch(modelDetailsResponseProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text("Vehicle requirement"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Brand",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                        ),
                      ),
                      TextSpan(
                        text: " *",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                6.sBH,
                brandDetails.when(
                  data: (data) {
                    return CommonDropDown<Brand>(
                      fn: (value) => value.name ?? "",
                      items: data?.data?.brands ?? [],
                      hintText: "Select Brand",
                      onChanged: (value) {
                        ref.read(addRequirementsScreenControllerProvider(vehicleTypeId).notifier).getModel(value!.id!);
                      },
                    );
                  },
                  error: (error, stackTrace) => Center(
                    child: Text(error.toString()),
                  ),
                  loading: () => TextFormField(
                    decoration: InputDecoration(hintText: "Select Brand"),
                  ),
                ),
                16.sBH,
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Model",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                        ),
                      ),
                      TextSpan(
                        text: " *",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                6.sBH,
                modelDetails.when(
                  data: (data) {
                    return CommonDropDown<ModelDetailsData>(
                      fn: (value) => value.name ?? "",
                      items: data?.data ?? [],
                      hintText: "Select Model",
                      onChanged: (value) {},
                    );
                  },
                  error: (error, stackTrace) => Center(
                    child: Text(error.toString()),
                  ),
                  loading: () => TextFormField(
                    decoration: const InputDecoration(hintText: "Select Model"),
                  ),
                ),
                // DropdownButtonFormField(items: data.data.brand, onChanged: onChanged)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 25, top: 5),
            child: DefaultButton(
              onPressed: () async {
                // context.pushRoute(const CreateRequirementsRoute());
              },
              text: "Submit",
            ),
          )
        ],
      ),
      /*
      body: vehicleDetails.when(
        data: (data) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(25),
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Brand",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                          ),
                          TextSpan(
                            text: " *",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    6.sBH,
                    // DropdownButtonFormField(items: data.data.brand, onChanged: onChanged)
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 25, top: 5),
                child: DefaultButton(
                    onPressed: () async {
                      // context.pushRoute(const CreateRequirementsRoute());
                    },
                    text: "Submit"),
              )
            ],
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),

       */
    );
  }
}
