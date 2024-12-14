// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:lilac_test/view/screens/add_requirements_screen/add_requirements_screen.dart'
    as _i1;
import 'package:lilac_test/view/screens/create_requirements_screen/create_requirements_screen.dart'
    as _i2;
import 'package:lilac_test/view/screens/dashboard_screen/dashboard_screen.dart'
    as _i3;
import 'package:lilac_test/view/screens/login_screen/login_screen.dart' as _i4;
import 'package:lilac_test/view/screens/navigatin_screen/navigation_screen.dart'
    as _i5;
import 'package:lilac_test/view/screens/requirment_screen/requirement_screen.dart'
    as _i6;

/// generated route for
/// [_i1.AddRequirementsScreen]
class AddRequirementsRoute extends _i7.PageRouteInfo<AddRequirementsRouteArgs> {
  AddRequirementsRoute({
    _i8.Key? key,
    required int vehicleTypeId,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          AddRequirementsRoute.name,
          args: AddRequirementsRouteArgs(
            key: key,
            vehicleTypeId: vehicleTypeId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddRequirementsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddRequirementsRouteArgs>();
      return _i1.AddRequirementsScreen(
        key: args.key,
        vehicleTypeId: args.vehicleTypeId,
      );
    },
  );
}

class AddRequirementsRouteArgs {
  const AddRequirementsRouteArgs({
    this.key,
    required this.vehicleTypeId,
  });

  final _i8.Key? key;

  final int vehicleTypeId;

  @override
  String toString() {
    return 'AddRequirementsRouteArgs{key: $key, vehicleTypeId: $vehicleTypeId}';
  }
}

/// generated route for
/// [_i2.CreateRequirementsScreen]
class CreateRequirementsRoute extends _i7.PageRouteInfo<void> {
  const CreateRequirementsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CreateRequirementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateRequirementsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateRequirementsScreen();
    },
  );
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.NavigationScreen]
class NavigationRoute extends _i7.PageRouteInfo<void> {
  const NavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavigationScreen();
    },
  );
}

/// generated route for
/// [_i6.RequirementScreen]
class RequirementRoute extends _i7.PageRouteInfo<void> {
  const RequirementRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RequirementRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequirementRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.RequirementScreen();
    },
  );
}
