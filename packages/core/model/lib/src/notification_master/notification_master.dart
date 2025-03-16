import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_master.freezed.dart';
part 'notification_master.g.dart';

/// お知らせマスター
///
/// {@category Model}
@freezed
class NotificationMaster with _$NotificationMaster {
  const factory NotificationMaster({
    required String id,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? title,
    String? body,
  }) = _NotificationMaster;

  factory NotificationMaster.fromJson(Map<String, Object?> json) =>
      _$NotificationMasterFromJson(json);
}
