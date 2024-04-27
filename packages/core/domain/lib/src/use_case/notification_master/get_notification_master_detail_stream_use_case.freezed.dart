// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_master_detail_stream_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetNotificationMasterDetailUseCaseArgs {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetNotificationMasterDetailUseCaseArgsCopyWith<
          GetNotificationMasterDetailUseCaseArgs>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationMasterDetailUseCaseArgsCopyWith<$Res> {
  factory $GetNotificationMasterDetailUseCaseArgsCopyWith(
          GetNotificationMasterDetailUseCaseArgs value,
          $Res Function(GetNotificationMasterDetailUseCaseArgs) then) =
      _$GetNotificationMasterDetailUseCaseArgsCopyWithImpl<$Res,
          GetNotificationMasterDetailUseCaseArgs>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GetNotificationMasterDetailUseCaseArgsCopyWithImpl<$Res,
        $Val extends GetNotificationMasterDetailUseCaseArgs>
    implements $GetNotificationMasterDetailUseCaseArgsCopyWith<$Res> {
  _$GetNotificationMasterDetailUseCaseArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationMasterDetailUseCaseArgsImplCopyWith<$Res>
    implements $GetNotificationMasterDetailUseCaseArgsCopyWith<$Res> {
  factory _$$GetNotificationMasterDetailUseCaseArgsImplCopyWith(
          _$GetNotificationMasterDetailUseCaseArgsImpl value,
          $Res Function(_$GetNotificationMasterDetailUseCaseArgsImpl) then) =
      __$$GetNotificationMasterDetailUseCaseArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetNotificationMasterDetailUseCaseArgsImplCopyWithImpl<$Res>
    extends _$GetNotificationMasterDetailUseCaseArgsCopyWithImpl<$Res,
        _$GetNotificationMasterDetailUseCaseArgsImpl>
    implements _$$GetNotificationMasterDetailUseCaseArgsImplCopyWith<$Res> {
  __$$GetNotificationMasterDetailUseCaseArgsImplCopyWithImpl(
      _$GetNotificationMasterDetailUseCaseArgsImpl _value,
      $Res Function(_$GetNotificationMasterDetailUseCaseArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetNotificationMasterDetailUseCaseArgsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotificationMasterDetailUseCaseArgsImpl
    implements _GetNotificationMasterDetailUseCaseArgs {
  const _$GetNotificationMasterDetailUseCaseArgsImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'GetNotificationMasterDetailUseCaseArgs(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationMasterDetailUseCaseArgsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationMasterDetailUseCaseArgsImplCopyWith<
          _$GetNotificationMasterDetailUseCaseArgsImpl>
      get copyWith =>
          __$$GetNotificationMasterDetailUseCaseArgsImplCopyWithImpl<
              _$GetNotificationMasterDetailUseCaseArgsImpl>(this, _$identity);
}

abstract class _GetNotificationMasterDetailUseCaseArgs
    implements GetNotificationMasterDetailUseCaseArgs {
  const factory _GetNotificationMasterDetailUseCaseArgs(
          {required final String id}) =
      _$GetNotificationMasterDetailUseCaseArgsImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationMasterDetailUseCaseArgsImplCopyWith<
          _$GetNotificationMasterDetailUseCaseArgsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
