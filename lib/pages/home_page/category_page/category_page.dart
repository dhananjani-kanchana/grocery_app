import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/category_page/all_categories.dart';
import 'package:flutter_grocery/pages/home_page/category_page/selected_items.dart';
import 'package:flutter_grocery/widgets/shared/shared_banner.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: const Color(0xff3B3636),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SharedBanner(),
              SizedBox(
                height: 10,
              ),
              Text(
                "All Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AllCategory(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selected Items",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SelectedItems(),
            ],
          ),
        ),
      ),
    );
  }
}
