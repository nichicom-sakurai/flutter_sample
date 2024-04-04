import 'package:flutter_sample_app/ui/router/base_routes/main_routes.dart';
import 'package:flutter_sample_app/ui/router/component/routing_error_page.dart';
import 'package:flutter_sample_app/ui/router/utils/route_path_name.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/${RoutePathName.home}',
    routes: [
      $mainRoute,
    ],
    errorBuilder: (context, state) => RoutingErrorPage(state: state),
  );
}
