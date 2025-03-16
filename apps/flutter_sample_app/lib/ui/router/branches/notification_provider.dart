import 'package:core_domain/core_domain.dart';
import 'package:core_model/core_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
Stream<List<NotificationMaster>> filteredList(FilteredListRef ref) =>
    ref.watch(getNotificationMasterListStreamUseCaseProvider).execute();
