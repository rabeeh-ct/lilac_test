import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/services/api_client/api_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/requirements_response.dart';
import '../services/api_client/api_client.dart';
import 'login_controller.dart';

part 'requirement_screen_controller.g.dart';

final requirementsProvider = StateProvider<AsyncValue<RequirementsResponse?>>((ref) {
  return const AsyncLoading();
});

@riverpod
class RequirementScreenController extends _$RequirementScreenController {
  @override
  FutureOr<void> build() {
    _apiClient = ref.read(apiClientProvider.notifier);
    getData();
  }

  late ApiClient _apiClient;

  getData({bool isRefresh = false}) async {
    final notifier = ref.read(requirementsProvider.notifier);
    if (isRefresh) {
      notifier.state = const AsyncLoading();
    }
    try {
        final user = ref.read(loginResponseProvider).value;
      final response = await _apiClient.get(
        header: {
          "Authorization":"Bearer ${user?.token}"
        },
        path: ApiConstants.getRequirements,
      );
        final requirementsResponse = RequirementsResponse.fromJson(response);
        // if (requirementsResponse.status == false && loginResponse.code != 200) {
        //   throw Exception("Invalid email or password");
        // }
        debugPrint(requirementsResponse.toString());
        notifier.state = AsyncData(requirementsResponse);

    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());
      notifier.state = AsyncError(e, st);
    }
  }
}
