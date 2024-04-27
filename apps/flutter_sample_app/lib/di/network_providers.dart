import 'package:core_network/core_network.dart';

final networkProviders = [
  // Firebase Firestore
  firestoreProvider.overrideWith((ref) => FirebaseFirestore.instance),
  firestoreNotificationMasterApiProvider,
];
