import 'package:core_model/core_model.dart';

final class AppBuildConfig implements BuildConfig {
  AppBuildConfig({
    required String? flavor,
    required this.appName,
  }) : flavor = switch (flavor) {
          'dev' => Flavor.dev,
          'stg' => Flavor.stg,
          'prod' => Flavor.prod,
          _ => Flavor.dev,
        };

  @override
  Flavor flavor;

  @override
  String appName;
}
