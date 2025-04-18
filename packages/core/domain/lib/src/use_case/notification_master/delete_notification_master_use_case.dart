import 'package:core_common/core_common.dart';
import 'package:core_data/core_data.dart';
import 'package:core_domain/src/use_case/use_case.dart';
import 'package:core_model/core_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_notification_master_use_case.g.dart';

@riverpod
DeleteNotificationMasterUseCase deleteNotificationMasterUseCase(
  DeleteNotificationMasterUseCaseRef ref,
) =>
    DeleteNotificationMasterUseCase(
      repository: ref.watch(notificationMasterRepositoryProvider),
    );

/// お知らせマスターを削除する ユースケース
class DeleteNotificationMasterUseCase
    implements UseCase<NotificationMaster, Future<OperationResult<void>>> {
  const DeleteNotificationMasterUseCase({
    required NotificationMasterRepository repository,
  }) : _repository = repository;

  final NotificationMasterRepository _repository;

  @override
  Future<OperationResult<void>> execute({
    required NotificationMaster args,
  }) async {
    return _repository.delete(model: args);
  }
}
