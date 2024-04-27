// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_notification_master.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkNotificationMasterImpl _$$NetworkNotificationMasterImplFromJson(
        Map<String, dynamic> json) =>
    _$NetworkNotificationMasterImpl(
      id: json['id'] as String,
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], timestampConverter.fromJson),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], timestampConverter.fromJson),
      deletedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['deletedAt'], timestampConverter.fromJson),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$NetworkNotificationMasterImplToJson(
        _$NetworkNotificationMasterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, timestampConverter.toJson),
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, timestampConverter.toJson),
      'deletedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.deletedAt, timestampConverter.toJson),
      'title': instance.title,
      'body': instance.body,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
