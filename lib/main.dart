import 'package:ecomadmin/pages/category_page.dart';
import 'package:ecomadmin/pages/dashboard_page.dart';
import 'package:ecomadmin/pages/launcher_page.dart';
import 'package:ecomadmin/pages/login_page.dart';
import 'package:ecomadmin/pages/order_page.dart';
import 'package:ecomadmin/pages/product_page.dart';
import 'package:ecomadmin/pages/report_page.dart';
import 'package:ecomadmin/pages/settings_page.dart';
import 'package:ecomadmin/pages/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      initialRoute:  LauncherPage.routeName,
      routes: {
        DashBoardPage.routeName:(_)=> DashBoardPage(),
        LauncherPage.routeName: (_) => LauncherPage(),
        LoginPage.routeName: (_) => LoginPage(),
        ProductPage.routeName:(_)=> ProductPage(),
        CategoryPage.routeName:(_)=> CategoryPage(),
        OrderPage.routeName:(_)=> OrderPage(),
        UserPage.routeName:(_)=> UserPage(),
        SettingsPage.routeName:(_)=> SettingsPage(),
        ReportPage.routeName:(_)=> ReportPage(),


      },

    );
  }
}


