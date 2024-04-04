import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/branch_type.dart';
import 'package:flutter_sample_app/ui/router/utils/route_path_name.dart';
import 'package:go_router/go_router.dart';

/// BottomNavigationBar上のプロフィールタブのブランチ
const profileBranch = TypedStatefulShellBranch<ProfileBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ProfileRoute>(
      path: '/${RoutePathName.profile}',
    ),
  ],
);

final GlobalKey<NavigatorState> _profileNavigatorKey =
    GlobalKey<NavigatorState>();

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = _profileNavigatorKey;
}

/// プロフィールページのルート
class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: Center(
          child: Text(BranchType.profile.label),
        ),
      );
}
