import 'package:bdtask_ecommerce_apps/Skippage1.dart';
import 'package:bdtask_ecommerce_apps/pages/accountPage.dart';
import 'package:bdtask_ecommerce_apps/pages/cartPage.dart';
import 'package:bdtask_ecommerce_apps/pages/categoryPage.dart';
import 'package:bdtask_ecommerce_apps/pages/detailsPage.dart';
import 'package:bdtask_ecommerce_apps/pages/home_page_1.dart';
import 'package:bdtask_ecommerce_apps/pages/skip_page_1.dart';
import 'package:bdtask_ecommerce_apps/pages/skip_page_2.dart';
import 'package:bdtask_ecommerce_apps/pages/skip_page_3.dart';
import 'package:bdtask_ecommerce_apps/pages/skip_page_view.dart';
import 'package:bdtask_ecommerce_apps/pages/splash.dart';
import 'package:bdtask_ecommerce_apps/pages/wishlistPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/bottomNavigationBarPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
