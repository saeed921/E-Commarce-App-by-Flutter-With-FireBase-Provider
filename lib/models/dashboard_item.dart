import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardItem{

  IconData icon;
  String title;

  DashboardItem({
    required this.icon,
    required this.title});

  static const String product='product';
  static const String category='category';
  static const String order='order';
  static const String user='user';
  static const String settings='settings';
  static const String report='report';

}
final List<DashboardItem> dashboardItem=[
  DashboardItem(icon: Icons.card_giftcard, title: DashboardItem.product),
  DashboardItem(icon: Icons.category, title: DashboardItem.category),
  DashboardItem(icon: Icons.monetization_on, title: DashboardItem.order),
  DashboardItem(icon: Icons.person, title: DashboardItem.user),
  DashboardItem(icon: Icons.settings, title: DashboardItem.settings),
  DashboardItem(icon: Icons.area_chart, title: DashboardItem.report),
];
