import 'package:core_model/build_config.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'app_initializer.dart';

Future<void> main() async {
  final buildConfig = await AppInitializer.initialize();
  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(buildConfig),
      ],
      child: const App(),
    ),
  );
}
