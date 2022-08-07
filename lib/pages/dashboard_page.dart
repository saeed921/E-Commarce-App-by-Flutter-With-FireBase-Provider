import 'package:ecomadmin/models/dashboard_item.dart';
import 'package:ecomadmin/pages/category_page.dart';
import 'package:ecomadmin/pages/order_page.dart';
import 'package:ecomadmin/pages/product_page.dart';
import 'package:ecomadmin/pages/report_page.dart';
import 'package:ecomadmin/pages/settings_page.dart';
import 'package:ecomadmin/pages/user_page.dart';
import 'package:ecomadmin/utils/dashboard_itemview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  static const String routeName='/dashboard';
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,

        ),
        itemCount: dashboardItem.length,
        itemBuilder: (context, index)=> DashboardItemView(
            item: dashboardItem[index],
            onPressed: (value){
              navigate(context,value);

            }),
          ),


    );

  }
  void navigate(BuildContext context, value) {
    switch(value){
      case DashboardItem.product:
        Navigator.pushNamed(context, ProductPage.routeName);
        break;
      case DashboardItem.category:
        Navigator.pushNamed(context, CategoryPage.routeName);
        break;
      case DashboardItem.order:
        Navigator.pushNamed(context, OrderPage.routeName);
        break;
      case DashboardItem.user:
        Navigator.pushNamed(context, UserPage.routeName);
        break;
      case DashboardItem.settings:
        Navigator.pushNamed(context, SettingsPage.routeName);
        break;
      case DashboardItem.report:
        Navigator.pushNamed(context, ReportPage.routeName);
        break;
    }

  }

}
