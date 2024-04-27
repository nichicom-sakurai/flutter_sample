// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_master.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationMasterImpl _$$NotificationMasterImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationMasterImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$NotificationMasterImplToJson(
        _$NotificationMasterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'title': instance.title,
      'body': instance.body,
    };
