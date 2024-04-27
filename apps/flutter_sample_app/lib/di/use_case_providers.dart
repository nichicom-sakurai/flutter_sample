import 'package:core_domain/core_domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// UseCase
final useCaseProviders = <Override>[
  // notificationMaster
  deleteNotificationMasterUseCaseProvider,
  getNotificationMasterDetailStreamUseCaseProvider,
  getNotificationMasterListStreamUseCaseProvider,
  overwriteNotificationMasterUseCaseProvider,
];
