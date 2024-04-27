// ignore_for_file: lines_longer_than_80_chars

/// Firestore・Firestorage・CloudFunctionsの例外タイプ
///
/// ・[Firestoreの例外（小文字＆ハイフン変換）](https://firebase.google.com/docs/reference/android/com/google/firebase/firestore/FirebaseFirestoreException.Code)
///
/// ・[FirebaseStorageの例外](https://firebase.flutter.dev/docs/storage/handle-errors/)
enum FirebaseExceptionType {
  aborted(
    code: 'aborted',
    message: '操作が中断されました。これは通常、トランザクションの中断など、並行性の問題が原因です。',
  ),
  alreadyExists(
    code: 'already-exists',
    message: '作成しようとしたドキュメントはすでに存在します。',
  ),
  cancelled(
    code: 'cancelled',
    message: '操作がキャンセルされました。',
  ),
  dataLoss(
    code: 'data-loss',
    message: '回復不可能なデータ損失または破損が発生しました。',
  ),
  deadlineExceeded(
    code: 'deadline-exceeded',
    message: '操作を完了する前に期限が切れました。',
  ),
  failedPrecondition(
    code: 'failed-precondition',
    message: 'システムが操作の実行に必要な状態にないため、操作は拒否されました。',
  ),
  internal(
    code: 'internal',
    message: '内部エラーが発生しました。',
  ),
  invalidArgument(
    code: 'invalid-argument',
    message: 'クライアントが無効な引数を指定しました。',
  ),
  notFound(
    code: 'not-found',
    message: '要求されたドキュメントが見つかりませんでした。',
  ),
  ok(
    code: 'ok',
    message: '操作は正常に完了しました。',
  ),
  outOfRange(
    code: 'out-of-range',
    message: '操作が有効範囲を超えて試みられました。',
  ),
  permissionDenied(
    code: 'permission-denied',
    message: '呼び出し元は指定された操作を実行する権限がありません。',
  ),
  resourceExhausted(
    code: 'resource-exhausted',
    message: 'リソースが枯渇しました。これは、ユーザーごとのクオータや、ファイルシステム全体の空き容量がなくなったことが原因かもしれません。',
  ),
  unauthenticated(
    code: 'unauthenticated',
    message: 'リクエストには操作に有効な認証情報がありません。',
  ),
  unavailable(
    code: 'unavailable',
    message: 'サービスは現在利用できません。',
  ),
  unimplemented(
    code: 'unimplemented',
    message: '操作は実装されていないか、サポートされていません/有効になっていません。',
  ),
  unknown(
    code: 'unknown',
    message: '不明なエラーが発生しました、または別のエラードメインからのエラーです。',
  ),
  objectNotFound(
    code: 'object-not-found',
    message: '目的の参照にオブジェクトが存在しません。',
  ),
  bucketNotFound(
    code: 'bucket-not-found',
    message: 'Cloud Storage用のバケットが設定されていません。',
  ),
  projectNotFound(
    code: 'project-not-found',
    message: 'Cloud Storage用のプロジェクトが設定されていません。',
  ),
  quotaExceeded(
    code: 'quota-exceeded',
    message:
        'Cloud Storageバケットのクオータを超えました。無料プランの場合は有料プランにアップグレードしてください。有料プランの場合はFirebaseサポートに連絡してください。',
  ),
  unauthorized(
    code: 'unauthorized',
    message: '操作を実行する権限がありません。セキュリティルールが正しいことを確認してください。',
  ),
  retryLimitExceeded(
    code: 'retry-limit-exceeded',
    message: '操作（アップロード、ダウンロード、削除など）に設定された最大時間制限を超えました。再度アップロードしてみてください。',
  ),
  invalidChecksum(
    code: 'invalid-checksum',
    message: 'クライアントのファイルがサーバーによって受信されたファイルのチェックサムと一致しません。再度アップロードしてみてください。',
  ),
  canceled(
    code: 'canceled',
    message: '操作がキャンセルされました。',
  ),
  invalidEventName(
    code: 'invalid-event-name',
    message: '無効なイベント名が提供されました。[running, progress, pause]のいずれかである必要があります。',
  ),
  invalidUrl(
    code: 'invalid-url',
    message:
        'refFromURL()に提供されたURLが無効です。形式はgs://bucket/objectまたはhttps://firebasestorage.googleapis.com/v0/b/bucket/o/object?token=<TOKEN>である必要があります。',
  ),
  noDefaultBucket(
    code: 'no-default-bucket',
    message: '設定のstorageBucketプロパティにバケットが設定されていません。',
  ),
  cannotSliceBlob(
    code: 'cannot-slice-blob',
    message:
        'ローカルファイルが変更された（削除された、再保存されたなど）場合によく発生します。ファイルが変更されていないことを確認した後、再度アップロードしてみてください。',
  ),
  serverFileWrongSize(
    code: 'server-file-wrong-size',
    message: 'クライアントのファイルがサーバーによって受信されたファイルのサイズと一致しません。再度アップロードしてみてください。',
  );

  const FirebaseExceptionType({
    required this.code,
    required this.message,
  });
  final String code;
  final String message;
}
