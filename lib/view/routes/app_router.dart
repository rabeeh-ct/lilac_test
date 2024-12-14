import 'package:auto_route/auto_route.dart';
import 'package:lilac_test/view/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true, path: '/'),
        AutoRoute(page: DashboardRoute.page, path: '/dashboard'),
        AutoRoute(page: NavigationRoute.page, path: '/navigation'),
        AutoRoute(page: RequirementRoute.page, path: '/requirement'),
        AutoRoute(page: CreateRequirementsRoute.page, path: '/create_requirement'),
        AutoRoute(page: AddRequirementsRoute.page, path: '/add_requirement'),
      ];
}
