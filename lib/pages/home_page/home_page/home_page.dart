import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/home_page/widgets/search_bar.dart';
import 'package:flutter_grocery/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery/widgets/reusable_widgets/category_container.dart';
import 'package:flutter_grocery/widgets/reusable_widgets/home_title.dart';
import 'package:flutter_grocery/widgets/reusable_widgets/sale_and_cost_category_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: appBarLeading,
          title: appBarTitle,
          actions: appBarActions,
          shadowColor: Colors.black26,
          elevation: 3,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MySearchBar(),
                SizedBox(
                  height: 10,
                ),
                MainTitle(mainTitle: "Explore Categories"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryContainer(
                      categoryName: "Vegetables",
                      categoryDescription:
                          "Vegetables are parts of plants that are consumed by humans...",
                      titleColor: Colors.white,
                      descriptionColor: Color(0xffC3C3C3),
                      largeBoxColor: Color(0xff9E00FF),
                      smallBoxColor: Color(0xff06FFA5),
                    ),
                    CategoryContainer(
                      categoryName: "Fish & Meat",
                      categoryDescription:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      titleColor: Colors.white,
                      descriptionColor: Color(0xffC3C3C3),
                      largeBoxColor: Color(0xff9E00FF),
                      smallBoxColor: Color(0xff06FFA5),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryContainer(
                      categoryName: "Vegetables",
                      categoryDescription:
                          "Vegetables are parts of plants that are consumed by humans...",
                      titleColor: Color(0xff3B3636),
                      descriptionColor: Color(0xff686060),
                      largeBoxColor: Color(0xffFFE500),
                      smallBoxColor: Color(0xffFF9900),
                    ),
                    CategoryContainer(
                      categoryName: "Fish & Meat",
                      categoryDescription:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      titleColor: Color(0xff3B3636),
                      descriptionColor: Color(0xff686060),
                      largeBoxColor: Color(0xffFFE500),
                      smallBoxColor: Color(0xffFF9900),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MainTitle(mainTitle: "For Sale & Low Cost"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SaleCostContainer(
                      containerTitle: "Washing Liquid",
                      itemQuantity: 220,
                      unit: 'ml',
                      amountPrice: 230,
                    ),
                    SaleCostContainer(
                      containerTitle: "Coffee and Tea",
                      itemQuantity: 100,
                      unit: 'g',
                      amountPrice: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
