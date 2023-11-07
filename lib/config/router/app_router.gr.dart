// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart'
    as _i5;
import 'package:employee__app/fetures/employee/presentation/screen/emloyee_update_screen.dart'
    as _i2;
import 'package:employee__app/fetures/employee/presentation/screen/employee_list_screen.dart'
    as _i1;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EmployeeListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmployeeListScreen(),
      );
    },
    EmployeeUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeeUpdateRouteArgs>(
          orElse: () => const EmployeeUpdateRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EmployeeUpdateScreen(
          key: args.key,
          employee: args.employee,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.EmployeeListScreen]
class EmployeeListRoute extends _i3.PageRouteInfo<void> {
  const EmployeeListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          EmployeeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmployeeUpdateScreen]
class EmployeeUpdateRoute extends _i3.PageRouteInfo<EmployeeUpdateRouteArgs> {
  EmployeeUpdateRoute({
    _i4.Key? key,
    _i5.EmployeeEntity? employee,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          EmployeeUpdateRoute.name,
          args: EmployeeUpdateRouteArgs(
            key: key,
            employee: employee,
          ),
          initialChildren: children,
        );

  static const String name = 'EmployeeUpdateRoute';

  static const _i3.PageInfo<EmployeeUpdateRouteArgs> page =
      _i3.PageInfo<EmployeeUpdateRouteArgs>(name);
}

class EmployeeUpdateRouteArgs {
  const EmployeeUpdateRouteArgs({
    this.key,
    this.employee,
  });

  final _i4.Key? key;

  final _i5.EmployeeEntity? employee;

  @override
  String toString() {
    return 'EmployeeUpdateRouteArgs{key: $key, employee: $employee}';
  }
}
