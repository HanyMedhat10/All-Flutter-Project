import 'package:flutter/material.dart';
import 'package:store_app/screens/add_product_page.dart';
import 'package:store_app/screens/home_pages.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePages.id: (context) => const HomePages(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
        AddProductPage.id: (context) => const AddProductPage(),
      },
      initialRoute: HomePages.id,
    );
  }
}
