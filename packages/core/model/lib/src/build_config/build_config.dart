import 'package:core_model/core_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'build_config.g.dart';

@Riverpod(keepAlive: true)
BuildConfig buildConfig(BuildConfigRef ref) {
  throw UnimplementedError('buildConfig');
}

abstract interface class BuildConfig {
  abstract final Flavor flavor;
  abstract final String appName;
}
