// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_master.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationMaster _$NotificationMasterFromJson(Map<String, dynamic> json) {
  return _NotificationMaster.fromJson(json);
}

/// @nodoc
mixin _$NotificationMaster {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMasterCopyWith<NotificationMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMasterCopyWith<$Res> {
  factory $NotificationMasterCopyWith(
          NotificationMaster value, $Res Function(NotificationMaster) then) =
      _$NotificationMasterCopyWithImpl<$Res, NotificationMaster>;
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? title,
      String? body});
}

/// @nodoc
class _$NotificationMasterCopyWithImpl<$Res, $Val extends NotificationMaster>
    implements $NotificationMasterCopyWith<$Res> {
  _$NotificationMasterCopyWithImpl(this._value, this._then);

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
abstract class _$$NotificationMasterImplCopyWith<$Res>
    implements $NotificationMasterCopyWith<$Res> {
  factory _$$NotificationMasterImplCopyWith(_$NotificationMasterImpl value,
          $Res Function(_$NotificationMasterImpl) then) =
      __$$NotificationMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? title,
      String? body});
}

/// @nodoc
class __$$NotificationMasterImplCopyWithImpl<$Res>
    extends _$NotificationMasterCopyWithImpl<$Res, _$NotificationMasterImpl>
    implements _$$NotificationMasterImplCopyWith<$Res> {
  __$$NotificationMasterImplCopyWithImpl(_$NotificationMasterImpl _value,
      $Res Function(_$NotificationMasterImpl) _then)
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
    return _then(_$NotificationMasterImpl(
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
class _$NotificationMasterImpl implements _NotificationMaster {
  const _$NotificationMasterImpl(
      {required this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.title,
      this.body});

  factory _$NotificationMasterImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationMasterImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'NotificationMaster(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMasterImpl &&
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
  _$$NotificationMasterImplCopyWith<_$NotificationMasterImpl> get copyWith =>
      __$$NotificationMasterImplCopyWithImpl<_$NotificationMasterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationMasterImplToJson(
      this,
    );
  }
}

abstract class _NotificationMaster implements NotificationMaster {
  const factory _NotificationMaster(
      {required final String id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      final String? title,
      final String? body}) = _$NotificationMasterImpl;

  factory _NotificationMaster.fromJson(Map<String, dynamic> json) =
      _$NotificationMasterImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$NotificationMasterImplCopyWith<_$NotificationMasterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
