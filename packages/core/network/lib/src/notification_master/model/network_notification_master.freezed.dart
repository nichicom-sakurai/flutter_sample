// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_notification_master.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkNotificationMaster _$NetworkNotificationMasterFromJson(
    Map<String, dynamic> json) {
  return _NetworkNotificationMaster.fromJson(json);
}

/// @nodoc
mixin _$NetworkNotificationMaster {
  String get id => throw _privateConstructorUsedError;
  @timestampConverter
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampConverter
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @timestampConverter
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkNotificationMasterCopyWith<NetworkNotificationMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkNotificationMasterCopyWith<$Res> {
  factory $NetworkNotificationMasterCopyWith(NetworkNotificationMaster value,
          $Res Function(NetworkNotificationMaster) then) =
      _$NetworkNotificationMasterCopyWithImpl<$Res, NetworkNotificationMaster>;
  @useResult
  $Res call(
      {String id,
      @timestampConverter DateTime? createdAt,
      @timestampConverter DateTime? updatedAt,
      @timestampConverter DateTime? deletedAt,
      String? title,
      String? body});
}

/// @nodoc
class _$NetworkNotificationMasterCopyWithImpl<$Res,
        $Val extends NetworkNotificationMaster>
    implements $NetworkNotificationMasterCopyWith<$Res> {
  _$NetworkNotificationMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkNotificationMasterImplCopyWith<$Res>
    implements $NetworkNotificationMasterCopyWith<$Res> {
  factory _$$NetworkNotificationMasterImplCopyWith(
          _$NetworkNotificationMasterImpl value,
          $Res Function(_$NetworkNotificationMasterImpl) then) =
      __$$NetworkNotificationMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @timestampConverter DateTime? createdAt,
      @timestampConverter DateTime? updatedAt,
      @timestampConverter DateTime? deletedAt,
      String? title,
      String? body});
}

/// @nodoc
class __$$NetworkNotificationMasterImplCopyWithImpl<$Res>
    extends _$NetworkNotificationMasterCopyWithImpl<$Res,
        _$NetworkNotificationMasterImpl>
    implements _$$NetworkNotificationMasterImplCopyWith<$Res> {
  __$$NetworkNotificationMasterImplCopyWithImpl(
      _$NetworkNotificationMasterImpl _value,
      $Res Function(_$NetworkNotificationMasterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$NetworkNotificationMasterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkNotificationMasterImpl implements _NetworkNotificationMaster {
  const _$NetworkNotificationMasterImpl(
      {required this.id,
      @timestampConverter this.createdAt,
      @timestampConverter this.updatedAt,
      @timestampConverter this.deletedAt,
      this.title,
      this.body});

  factory _$NetworkNotificationMasterImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkNotificationMasterImplFromJson(json);

  @override
  final String id;
  @override
  @timestampConverter
  final DateTime? createdAt;
  @override
  @timestampConverter
  final DateTime? updatedAt;
  @override
  @timestampConverter
  final DateTime? deletedAt;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'NetworkNotificationMaster(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNotificationMasterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, deletedAt, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkNotificationMasterImplCopyWith<_$NetworkNotificationMasterImpl>
      get copyWith => __$$NetworkNotificationMasterImplCopyWithImpl<
          _$NetworkNotificationMasterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkNotificationMasterImplToJson(
      this,
    );
  }
}

abstract class _NetworkNotificationMaster implements NetworkNotificationMaster {
  const factory _NetworkNotificationMaster(
      {required final String id,
      @timestampConverter final DateTime? createdAt,
      @timestampConverter final DateTime? updatedAt,
      @timestampConverter final DateTime? deletedAt,
      final String? title,
      final String? body}) = _$NetworkNotificationMasterImpl;

  factory _NetworkNotificationMaster.fromJson(Map<String, dynamic> json) =
      _$NetworkNotificationMasterImpl.fromJson;

  @override
  String get id;
  @override
  @timestampConverter
  DateTime? get createdAt;
  @override
  @timestampConverter
  DateTime? get updatedAt;
  @override
  @timestampConverter
  DateTime? get deletedAt;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$NetworkNotificationMasterImplCopyWith<_$NetworkNotificationMasterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
