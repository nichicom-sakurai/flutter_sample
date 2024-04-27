import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/notification_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO(sakurai): feature_notificationを作成してこのScaffoldと差し替える
final class NotificationPage extends HookConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValues = ref.watch(filteredListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('おしらせ'),
      ),
      body: asyncValues.when(
        loading: () => const CircularProgressIndicator.adaptive(),
        error: (error, stackTrace) {
          // ignore: avoid_print
          print(error);
          return Expanded(child: ErrorWidget(error));
        },
        data: (snapshots) => snapshots.isEmpty
            ? const Center(child: Text('no data'))
            : ListView.builder(
                itemCount: snapshots.length,
                itemBuilder: (context, index) {
                  final snapshot = snapshots[index];
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.title ?? 'no title ...'),
                      subtitle: Text(snapshot.body ?? 'no body ...'),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
