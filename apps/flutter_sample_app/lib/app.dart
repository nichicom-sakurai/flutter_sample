import 'package:core_model/build_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: ref.watch(buildConfigProvider).appName,
      routerConfig: ref.watch(routerProvider),
    );
  }
}
