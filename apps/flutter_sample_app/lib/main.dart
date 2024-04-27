import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'app_initializer.dart';
import 'di/di.dart';

Future<void> main() async {
  final buildConfig = await AppInitializer.initialize();
  runApp(
    ProviderScope(
      overrides: appModule(buildConfig: buildConfig),
      child: const App(),
    ),
  );
}
