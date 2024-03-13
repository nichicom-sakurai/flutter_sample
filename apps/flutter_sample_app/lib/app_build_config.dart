import 'package:core_model/build_config.dart';

final class AppBuildConfig implements BuildConfig {
  AppBuildConfig({
    required String? flavor,
  }) : flavor = switch (flavor) {
          'dev' => Flavor.dev,
          'stg' => Flavor.stg,
          'prod' => Flavor.prod,
          _ => Flavor.dev,
        };

  @override
  Flavor flavor;
}
