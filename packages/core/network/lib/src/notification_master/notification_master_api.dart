import 'package:core_common/core_common.dart';
import 'package:core_network/src/notification_master/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_master_api.g.dart';

/// お知らせマスター API
///
/// {@category Network}
abstract interface class NotificationMasterApi {
  /// 一覧
  Stream<List<NetworkNotificationMaster>> list({
    int? limit,
  });

  /// 詳細
  Stream<NetworkNotificationMaster?> detail({required String id});

  /// 更新
  Future<OperationResult<void>> overwrite({
    required NetworkNotificationMaster networkModel,
  });

  /// 削除
  Future<OperationResult<void>> delete({
    required NetworkNotificationMaster networkModel,
  });
}

@riverpod
NotificationMasterApi notificationMasterApi(NotificationMasterApiRef ref) =>
    throw UnimplementedError('notificationMasterApi');
