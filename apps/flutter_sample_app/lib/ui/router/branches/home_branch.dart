import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/branch_type.dart';
import 'package:flutter_sample_app/ui/router/utils/route_path_name.dart';
import 'package:go_router/go_router.dart';

/// BottomNavigationBar上のホームタブのブランチ
const homeBranch = TypedStatefulShellBranch<SummaryBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<HomeRoute>(
      path: '/${RoutePathName.home}',
    ),
  ],
);

final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

class SummaryBranch extends StatefulShellBranchData {
  const SummaryBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = _homeNavigatorKey;
}

/// ホームページ（タブ1つ目）のルート
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // TODO(sakurai): feature_homeを作成してこのScaffoldと差し替える
      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(BranchType.home.label),
            ],
          ),
        ),
      );
}
