import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/branch_type.dart';
import 'package:flutter_sample_app/ui/router/utils/route_path_name.dart';
import 'package:go_router/go_router.dart';

/// BottomNavigationBar上のおしらせタブのブランチ
const notificationBranch = TypedStatefulShellBranch<NotificationBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<NotificationRoute>(
      path: '/${RoutePathName.notification}',
    ),
  ],
);

final GlobalKey<NavigatorState> _notificationNavigatorKey =
    GlobalKey<NavigatorState>();

class NotificationBranch extends StatefulShellBranchData {
  const NotificationBranch();
  static final GlobalKey<NavigatorState> $navigatorKey =
      _notificationNavigatorKey;
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: Center(
          child: Text(BranchType.notification.label),
        ),
      );
}
