import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_common/core_common.dart';
import 'package:core_network/core_network.dart';
import 'package:core_network/src/extension/operation_result_mixin.dart';

final firestoreNotificationMasterApiProvider =
    notificationMasterApiProvider.overrideWith(
  (ref) => FirestoreNotificationMasterApi(
    firestore: ref.watch(firestoreProvider),
  ),
);

final class FirestoreNotificationMasterApi
    with OperationResultMixin
    implements NotificationMasterApi {
  FirestoreNotificationMasterApi({required FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;

  static const _currentCol = 'notificationMasters';

  CollectionReference<NetworkNotificationMaster> _colRef() =>
      _firestore.collection(_currentCol).withConverter(
            fromFirestore: (doc, _) =>
                NetworkNotificationMaster.fromJson(doc.data()!),
            toFirestore: (entity, _) => entity.toJson().supplementTimestamp(),
          );

  DocumentReference<NetworkNotificationMaster> _docRef(String id) =>
      _colRef().doc(id).withConverter(
            fromFirestore: (doc, _) =>
                NetworkNotificationMaster.fromJson(doc.data()!),
            toFirestore: (entity, _) => entity.toJson().supplementTimestamp(),
          );

  @override
  Stream<List<NetworkNotificationMaster>> list({
    int? limit,
  }) {
    var query =
        _colRef().where(NetworkNotificationMasterField.deletedAt, isNull: true);
    if (limit != null) {
      query = query.limit(limit);
    }
    return query
        .orderBy(TimestampField.updatedAt, descending: true)
        .snapshots()
        .map((e) => e.docs.map((e) => e.data()).toList());
  }

  @override
  Stream<NetworkNotificationMaster?> detail({required String id}) =>
      _docRef(id).snapshots().map((snapshot) => snapshot.data());

  @override
  Future<OperationResult<void>> overwrite({
    required NetworkNotificationMaster networkModel,
  }) async {
    return executeFirebase(() => _docRef(networkModel.id).set(networkModel));
  }

  @override
  Future<OperationResult<void>> delete({
    required NetworkNotificationMaster networkModel,
  }) async {
    return executeFirebase(() => _docRef(networkModel.id).delete());
  }
}
