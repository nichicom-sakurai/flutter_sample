import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/router/branches/branch_type.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({
    required this.pageBody,
    super.key,
  });

  final StatefulNavigationShell pageBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageBody.currentIndex,
        onTap: pageBody.goBranch,
        items: BranchType.values
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.icon),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
