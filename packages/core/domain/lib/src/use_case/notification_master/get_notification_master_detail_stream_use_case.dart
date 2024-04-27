import 'package:core_data/core_data.dart';
import 'package:core_domain/src/use_case/use_case.dart';
import 'package:core_model/core_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_notification_master_detail_stream_use_case.freezed.dart';
part 'get_notification_master_detail_stream_use_case.g.dart';

@riverpod
GetNotificationMasterDetailStreamUseCase
    getNotificationMasterDetailStreamUseCase(
  GetNotificationMasterDetailStreamUseCaseRef ref,
) =>
        GetNotificationMasterDetailStreamUseCase(
          repository: ref.watch(notificationMasterRepositoryProvider),
        );

/// お知らせマスター詳細を取得する ユースケースの引数
@freezed
class GetNotificationMasterDetailUseCaseArgs
    with _$GetNotificationMasterDetailUseCaseArgs {
  const factory GetNotificationMasterDetailUseCaseArgs({
    required String id,
  }) = _GetNotificationMasterDetailUseCaseArgs;
}

/// お知らせマスター詳細を取得する ユースケース
class GetNotificationMasterDetailStreamUseCase
    implements
        UseCase<GetNotificationMasterDetailUseCaseArgs,
            Stream<NotificationMaster?>> {
  const GetNotificationMasterDetailStreamUseCase({
    required NotificationMasterRepository repository,
  }) : _repository = repository;
  final NotificationMasterRepository _repository;

  @override
  Stream<NotificationMaster?> execute({
    required GetNotificationMasterDetailUseCaseArgs args,
  }) {
    return _repository.detail(id: args.id);
  }
}
