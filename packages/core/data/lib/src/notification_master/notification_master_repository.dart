import 'package:core_common/core_common.dart';
import 'package:core_data/src/notification_master/notification_master_data_mapper.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_master_repository.g.dart';

@riverpod
NotificationMasterRepository notificationMasterRepository(
  NotificationMasterRepositoryRef ref,
) {
  return NotificationMasterRepository(
    api: ref.watch(notificationMasterApiProvider),
  );
}

final class NotificationMasterRepository {
  const NotificationMasterRepository({
    required NotificationMasterApi api,
  }) : _api = api;
  final NotificationMasterApi _api;

  Stream<List<NotificationMaster>> list({
    int? limit,
  }) =>
      _api
          .list(
            limit: limit,
          )
          .mapList((model) => model.toNotificationMaster);

  Stream<NotificationMaster?> detail({required String id}) =>
      _api.detail(id: id).map((model) => model?.toNotificationMaster);

  Future<OperationResult<void>> overwrite({
    required NotificationMaster model,
  }) async =>
      _api.overwrite(networkModel: model.toNetworkNotificationMaster);

  Future<OperationResult<void>> delete({
    required NotificationMaster model,
  }) async =>
      _api.delete(networkModel: model.toNetworkNotificationMaster);
}
