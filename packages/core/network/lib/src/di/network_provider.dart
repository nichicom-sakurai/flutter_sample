import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_provider.g.dart';

/// FirebaseFirestore
@Riverpod(keepAlive: true)
FirebaseFirestore firestore(FirestoreRef ref) =>
    throw UnimplementedError('FirebaseFirestore');
