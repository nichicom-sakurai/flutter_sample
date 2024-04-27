import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

/// お知らせマスター マッパークラス
final class NotificationMasterDataMapper {
  NotificationMasterDataMapper._();
  static final NotificationMasterDataMapper instance =
      NotificationMasterDataMapper._();

  NotificationMaster fromNetwork(NetworkNotificationMaster model) =>
      NotificationMaster(
        id: model.id,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        deletedAt: model.deletedAt,
        title: model.title,
        body: model.body,
      );

  NetworkNotificationMaster toNetwork(NotificationMaster model) =>
      NetworkNotificationMaster(
        id: model.id,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        deletedAt: model.deletedAt,
        title: model.title,
        body: model.body,
      );
}

extension NetworkNotificationMasterExt on NetworkNotificationMaster {
  NotificationMaster get toNotificationMaster =>
      NotificationMasterDataMapper.instance.fromNetwork(this);
}

extension NotificationMasterExt on NotificationMaster {
  NetworkNotificationMaster get toNetworkNotificationMaster =>
      NotificationMasterDataMapper.instance.toNetwork(this);
}
