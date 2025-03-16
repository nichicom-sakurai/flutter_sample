import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_network/core_network.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_notification_master.freezed.dart';
part 'network_notification_master.g.dart';

/// お知らせマスター
///
/// {@category Model}
@freezed
class NetworkNotificationMaster with _$NetworkNotificationMaster {
  const factory NetworkNotificationMaster({
    required String id,
    @timestampConverter DateTime? createdAt,
    @timestampConverter DateTime? updatedAt,
    @timestampConverter DateTime? deletedAt,
    String? title,
    String? body,
  }) = _NetworkNotificationMaster;

  factory NetworkNotificationMaster.fromJson(Map<String, Object?> json) =>
      _$NetworkNotificationMasterFromJson(json);
}

/// @nodoc
final class NetworkNotificationMasterField {
  static const id = 'id';
  static const createdAt = 'createdAt';
  static const updatedAt = 'updatedAt';
  static const deletedAt = 'deletedAt';
  static const title = 'title';
  static const body = 'body';
}
