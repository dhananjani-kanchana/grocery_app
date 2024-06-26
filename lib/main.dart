import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/category_page/category_page.dart';
import 'package:flutter_grocery/pages/home_page/home_page/home_page.dart';
import 'package:flutter_grocery/pages/home_page/product_details/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Grocery App",
      home: ProductDetails(), // this is my test comment.
    );
  } // this is second comment
}
