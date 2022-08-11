import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomadmin/page/category_page.dart';
import 'package:ecomadmin/page/dashboard_page.dart';
import 'package:ecomadmin/page/product_page.dart';
import 'package:ecomadmin/page/report_page.dart';
import 'package:ecomadmin/page/settings_page.dart';
import 'package:ecomadmin/page/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'page/launcher_page.dart';
import 'page/login_page.dart';
import 'page/new_product_page.dart';
import 'page/order_page.dart';
import 'page/product_details_page.dart';
import 'providers/product_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LauncherPage.routeName,
      routes: {
        DashboardPage.routeName: (_) => const DashboardPage(),
        LauncherPage.routeName: (_) => const LauncherPage(),
        LoginPage.routeName: (_) => const LoginPage(),
        ProductPage.routeName: (_) => const ProductPage(),
        NewProductPage.routeName: (_) => const NewProductPage(),
        ProductDetailsPage.routeName: (_) => const ProductDetailsPage(),
        CategoryPage.routeName: (_) => const CategoryPage(),
        OrderPage.routeName: (_) => const OrderPage(),
        UserPage.routeName: (_) => const UserPage(),
        SettingsPage.routeName: (_) => const SettingsPage(),
        ReportPage.routeName: (_) => const ReportPage(),
      },
    );
  }
}
