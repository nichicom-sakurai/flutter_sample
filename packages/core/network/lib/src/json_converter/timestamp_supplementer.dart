import 'package:cloud_firestore/cloud_firestore.dart';

/// 変換対象のTimestampField文字列
///
/// {@category Common}
final class TimestampField {
  static const createdAt = 'createdAt';
  static const updatedAt = 'updatedAt';
}

/// Mapエクステンション
///
/// extensionを利用してMapクラスにTimestampFieldを追加する
/// {@category Common}
extension MapExt on Map<String, Object?> {
  /// `createdAt` が null なら `serverTimestamp` を挿入する
  /// `updatedAt` に `serverTimestamp` を挿入する
  Map<String, Object?> supplementTimestamp() {
    return <String, Object?>{
      ...this,
      if (this[TimestampField.createdAt] == null)
        TimestampField.createdAt: FieldValue.serverTimestamp(),
      TimestampField.updatedAt: FieldValue.serverTimestamp(),
    };
  }
}
