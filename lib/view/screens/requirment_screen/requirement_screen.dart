import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/controller/login_controller.dart';
import 'package:lilac_test/controller/requirement_screen_controller.dart';
import 'package:lilac_test/utils/extentions.dart';
import 'package:lilac_test/view/routes/app_router.gr.dart';
import 'package:lilac_test/view/screens/requirment_screen/components/requirement_card.dart';
import 'package:lilac_test/view/theme/colors.dart';
import 'package:lilac_test/view/widgets/default_button.dart';

@RoutePage()
class RequirementScreen extends ConsumerWidget {
  const RequirementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requirementScreenController = ref.watch(requirementScreenControllerProvider);
    final requirements = ref.watch(requirementsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        backgroundColor: whiteColor,
        title: const Text("Requirement  List"),
      ),
      body: requirements.when(
        data: (data) {
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                    padding: const EdgeInsets.all(25),
                    itemBuilder: (context, index) {
                      return RequirementCard(data!.data![index]);
                    },
                    separatorBuilder: (context, index) => 10.sBH,
                    itemCount: data?.data?.length ?? 0),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 25, top: 5),
                child: DefaultButton(
                    onPressed: () async {
                      context.pushRoute(const CreateRequirementsRoute());
                    },
                    text: "+ Create A Requirement"),
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
    );
  }
}
