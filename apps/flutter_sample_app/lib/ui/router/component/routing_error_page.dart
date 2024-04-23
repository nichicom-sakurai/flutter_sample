import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutingErrorPage extends StatelessWidget {
  const RoutingErrorPage({
    required this.state,
    super.key,
  });

  // ignore: diagnostic_describe_all_properties
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('エラー'),
      ),
      body: Center(
        child: Text(
          state.error.toString(),
        ),
      ),
    );
  }
}
