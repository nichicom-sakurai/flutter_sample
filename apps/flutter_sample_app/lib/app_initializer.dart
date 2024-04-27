import 'package:core_model/core_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sample_app/dev/firebase_options.dart' as dev;

import 'app_build_config.dart';

final class AppInitializer {
  AppInitializer._();

  static Future<BuildConfig> initialize() async {
    final buildConfig = initializeBuildConfig();
    await initializeFirebase(flavor: buildConfig.flavor);
    return buildConfig;
  }

  @visibleForTesting
  static BuildConfig initializeBuildConfig() {
    return AppBuildConfig(
      flavor: const String.fromEnvironment('flavor', defaultValue: 'dev'),
      appName:
          const String.fromEnvironment('appName', defaultValue: 'Flutter Demo'),
    );
  }

  @visibleForTesting
  static Future<void> initializeFirebase({required Flavor flavor}) async {
    await Firebase.initializeApp(
      options: switch (flavor) {
        Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
        // NOTE: サンプルのため、dev と同じFirebaseプロジェクトを参照する
        Flavor.stg => dev.DefaultFirebaseOptions.currentPlatform,
        Flavor.prod => dev.DefaultFirebaseOptions.currentPlatform,
      },
    );
  }
}
