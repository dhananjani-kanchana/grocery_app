import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/category_page/widgets/rating_star_box.dart';
import 'package:flutter_grocery/pages/home_page/category_page/widgets/vegetable_list.dart';

class SelectedItems extends StatelessWidget {
  final double boxHeight = 460;

  const SelectedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffE0DCD6).withOpacity(.29),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xff2C2828).withOpacity(.29),
          width: 6,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            VegetableList(
              circleNumber: 1,
              vegetableDescription:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            VegetableList(
              circleNumber: 2,
              vegetableDescription:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            VegetableList(
              circleNumber: 3,
              vegetableDescription:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            VegetableList(
              circleNumber: 4,
              vegetableDescription:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            SizedBox(
              height: 20,
            ),
            RatingStarBox(),
          ],
        ),
      ),
    );
  }
}
