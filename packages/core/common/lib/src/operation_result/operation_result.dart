import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_result.freezed.dart';

@freezed
class OperationResult<T> with _$OperationResult<T> {
  const factory OperationResult.success(T data) = _Success<T>;
  const factory OperationResult.failure({
    required String message,
  }) = _Failure<T>;
}
