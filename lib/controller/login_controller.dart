import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/model/login_response.dart';
import 'package:lilac_test/model/params/login_params.dart';
import 'package:lilac_test/services/api_client/api_constants.dart';
import 'package:lilac_test/view/routes/app_router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/api_client/api_client.dart';

part 'login_controller.g.dart';

final loginResponseProvider = StateProvider<AsyncValue<LoginResponse?>>((ref) {
  return const AsyncLoading();
});

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {
    _apiClient = ref.read(apiClientProvider.notifier);
  }

  late ApiClient _apiClient;

  // LoginResponse? loginResponse;

  login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    final notifier = ref.read(loginResponseProvider.notifier);
    final autoRouter = AutoRouter.of(context);
    try {
      final response = await _apiClient.post(
        body: LoginParams(email: email, password: password).toJson(),
        path: ApiConstants.login,
      );
      final loginResponse = LoginResponse.fromJson(response);
      if (loginResponse.status == false && loginResponse.code != 200) {
        throw Exception("Invalid email or password");
      }
      debugPrint(loginResponse.toString());
      notifier.state = AsyncData(loginResponse);
      autoRouter.navigate(const NavigationRoute());
    } catch (e, st) {
      debugPrint(">>> error occurred $e <<<");
      notifier.state = AsyncError(e.toString(), st);
    }
  }
}
