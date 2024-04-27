import 'package:core_model/core_model.dart';
import 'package:flutter_sample_app/di/network_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<Override> appModule({
  required BuildConfig buildConfig,
}) =>
    [
      buildConfigProvider.overrideWithValue(buildConfig),
      ...networkProviders,
    ];
