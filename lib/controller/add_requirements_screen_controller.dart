import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/brand_details_response.dart';
import '../model/model_details_response.dart';
import '../model/vehicle_details_response.dart';
import '../services/api_client/api_client.dart';
import '../services/api_client/api_constants.dart';
import 'login_controller.dart';

part 'add_requirements_screen_controller.g.dart';

final vehicleDetailsResponseProvider =
    StateProvider<AsyncValue<VehicleDetailsResponse?>>((ref) {
  return const AsyncLoading();
});

final brandDetailsResponseProvider = StateProvider<AsyncValue<BrandDetailsResponse?>>((ref) {
  return const AsyncLoading();
});

final modelDetailsResponseProvider = StateProvider<AsyncValue<ModelDetailsResponse?>>((ref) {
  return const AsyncLoading();
});

@riverpod
class AddRequirementsScreenController extends _$AddRequirementsScreenController {
  @override
  FutureOr<void> build(int vehicleId) {
    _apiClient = ref.read(apiClientProvider.notifier);
    getData(vehicleId);
  }

  late ApiClient _apiClient;

  getData(int vehicleId, {bool isRefresh = false}) async {
    final notifier = ref.read(brandDetailsResponseProvider.notifier);
    if (isRefresh) {
      notifier.state = const AsyncLoading();
    }
    try {
      final user = ref.read(loginResponseProvider).value;
      final response = await _apiClient.get(
        header: {"Authorization": "Bearer ${user?.token}"},
        path: "${ApiConstants.getBrandDetails}/$vehicleId",
      );
      final responseModel = BrandDetailsResponse.fromJson(response);
      debugPrint(responseModel.toString());
      notifier.state = AsyncData(responseModel);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());
      notifier.state = AsyncError(e, st);
    }
  }

  getModel(int modelId, {bool isRefresh = false}) async {
    final notifier = ref.read(modelDetailsResponseProvider.notifier);
    notifier.state=const AsyncLoading();
    if (isRefresh) {
      notifier.state = const AsyncLoading();
    }
    try {
      final user = ref.read(loginResponseProvider).value;
      final response = await _apiClient.get(
        header: {"Authorization": "Bearer ${user?.token}"},
        path: "${ApiConstants.getModelDetails}/$vehicleId/$modelId",
      );
      final responseModel = ModelDetailsResponse.fromJson(response);
      debugPrint(responseModel.toString());
      notifier.state = AsyncData(responseModel);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());
      notifier.state = AsyncError(e, st);
    }
  }

}
