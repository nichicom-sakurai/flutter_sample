import 'package:core_data/core_data.dart';
import 'package:core_domain/src/use_case/use_case.dart';
import 'package:core_model/core_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_notification_master_list_stream_use_case.g.dart';

@riverpod
GetNotificationMasterListStreamUseCase getNotificationMasterListStreamUseCase(
  GetNotificationMasterListStreamUseCaseRef ref,
) =>
    GetNotificationMasterListStreamUseCase(
      repository: ref.watch(notificationMasterRepositoryProvider),
    );

class GetNotificationMasterListStreamUseCase
    implements UseCase<int?, Stream<List<NotificationMaster>>> {
  const GetNotificationMasterListStreamUseCase({
    required NotificationMasterRepository repository,
  }) : _repository = repository;
  final NotificationMasterRepository _repository;

  @override
  Stream<List<NotificationMaster>> execute({int? args}) =>
      _repository.list(limit: args);
}
