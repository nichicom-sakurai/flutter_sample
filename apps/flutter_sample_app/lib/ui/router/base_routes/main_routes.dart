import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/branch_type.dart';
import 'package:flutter_sample_app/ui/router/branches/home_branch.dart';
import 'package:flutter_sample_app/ui/router/branches/notification_branch.dart';
import 'package:flutter_sample_app/ui/router/branches/profile_branch.dart';
import 'package:flutter_sample_app/ui/router/component/bottom_navigation_scaffold.dart';
import 'package:go_router/go_router.dart';

part 'main_routes.g.dart';

final _mainNavigatorKey = GlobalKey<NavigatorState>();
const _branches = [
  homeBranch,
  notificationBranch,
  profileBranch,
];

/// ページのルート
/// TypedStatefulShellBranchをBranchTypeと同数作成しBottomNavigationによるページ切り替えを行う
@TypedStatefulShellRoute<MainRoute>(branches: _branches)
class MainRoute extends StatefulShellRouteData {
  const MainRoute();
  static final GlobalKey<NavigatorState> $navigatorKey = _mainNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    // branchesの数とBranchTypeの数が一致していない場合はエラーを出す
    assert(
      _branches.length == BranchType.values.length,
      'branches.lengthとBranchType.values.lengthは同じである必要があります',
    );

    // 各Branchの最初のページにいるかどうか
    final isOnBranchBase = BranchType.values
        .any((branchType) => '/${branchType.name}' == state.fullPath);
    // navigationShellはTypedStatefulShellBranchで定義したページなので、
    // BottomNavigation有りのページが来た場合はBottomNavigationScaffoldでラップする
    return isOnBranchBase
        ? BottomNavigationScaffold(pageBody: navigationShell)
        : navigationShell;
  }
}
