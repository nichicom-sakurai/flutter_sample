import 'package:core_model/build_config.dart';
import 'package:flutter/foundation.dart';

import 'app_build_config.dart';

final class AppInitializer {
  AppInitializer._();

  static Future<BuildConfig> initialize() async {
    final buildConfig = initializeBuildConfig();
    return buildConfig;
  }

  @visibleForTesting
  static BuildConfig initializeBuildConfig() {
    return AppBuildConfig(
      flavor: const String.fromEnvironment('flavor', defaultValue: 'dev'),
    );
  }
}
