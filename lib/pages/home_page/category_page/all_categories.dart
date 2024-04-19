import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/category_page/widgets/all_category_container.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            AllCategoryContainer(
              title: "Vegetable & \nFruits",
              description: "20+ more...",
              circleColor: Color(0xff0E00AC),
              boxBorderColor: Color(0xff0094FF),
              boxFillColor: Color(0xff0057FF),
            ),
            AllCategoryContainer(
              title: "Cooking&\nElements",
              description: "10+ more...",
              circleColor: Color(0xff10C0F8),
              boxBorderColor: Color(0xff00F0FF),
              boxFillColor: Color(0xff00E0FF),
            ),
            AllCategoryContainer(
              title: "Vegetable & \nFruits",
              description: "20+ more...",
              circleColor: Color(0xffE56C6C),
              boxBorderColor: Color(0xffFFA800),
              boxFillColor: Color(0xffFF3D00),
            ),
          ],
        ),
        Column(
          children: [
            AllCategoryContainer(
              title: "Bites & \nDrinks",
              description: "20+ more...",
              circleColor: Color(0xff06FFA5),
              boxBorderColor: Color(0xff00FF29),
              boxFillColor: Color(0xff70FF00),
            ),
            AllCategoryContainer(
              title: "Chicken & \nBeef",
              description: "20+ more...",
              circleColor: Color(0xffFF9900),
              boxBorderColor: Color(0xffFFB800),
              boxFillColor: Color(0xffFFF500),
            ),
            AllCategoryContainer(
              title: "Transport & \nVehicle",
              description: "20+ more...",
              circleColor: Color(0xffDB00FF),
              boxBorderColor: Color(0xffCC00FF),
              boxFillColor: Color(0xffCC00FF),
            ),
          ],
        )
      ],
    );
  }
}
