import 'package:app_admin/screens/home_screen.dart';
import 'package:app_admin/screens/new_product_screen.dart';
import 'package:app_admin/screens/orders_screen.dart';
import 'package:app_admin/screens/products_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My eCommerce Backend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/products', page: () => ProductsScreen()),
        GetPage(name: '/products/new', page: () => NewProductScreen()),
        //   GetPage(name: '/orders', page: () => const OrderScreen())
      ],
    );
  }
}
