import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_common/core_common.dart';
import 'package:core_network/src/extension/error_code/firebase_exception_type.dart';

mixin OperationResultMixin {
  Future<OperationResult<T>> executeFirebase<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return OperationResult.success(result);
    } on FirebaseException catch (exception) {
      final type = FirebaseExceptionType.values.firstWhere(
        (e) => e.code == exception.code,
        orElse: () => FirebaseExceptionType.unknown,
      );
      final message = type.message;
      return OperationResult.failure(message: message);
    } on Exception catch (e) {
      return OperationResult.failure(message: '不明なエラー \n$e');
    }
  }
}
