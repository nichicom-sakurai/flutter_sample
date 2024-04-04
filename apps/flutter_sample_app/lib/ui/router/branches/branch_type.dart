import 'package:flutter/material.dart';

/// アプリ用のRoutingのブランチ(メニューのタブ)のタイプ
enum BranchType {
  home(
    label: 'ホーム',
    icon: Icons.home,
  ),
  notification(
    label: 'おしらせ',
    icon: Icons.notifications,
  ),
  profile(
    label: 'マイページ',
    icon: Icons.person,
  ),
  ;

  const BranchType({
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;
}
