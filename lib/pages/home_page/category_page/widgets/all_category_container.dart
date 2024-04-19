import 'package:flutter/material.dart';

class AllCategoryContainer extends StatelessWidget {
  final double containerHeight = 100;
  final double containerWidth = 200;
  final double circleWidthHeight = 50;

  final Color boxFillColor;
  final Color boxBorderColor;
  final Color circleColor;
  final String title;
  final String description;

  const AllCategoryContainer({
    super.key,
    required this.boxBorderColor,
    required this.boxFillColor,
    required this.circleColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: boxFillColor.withOpacity(0.29),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: boxBorderColor,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff3B3636).withOpacity(.91)),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff3B3636).withOpacity(.47)),
                  ),
                ],
              ),
            ),
            Container(
              height: circleWidthHeight,
              width: circleWidthHeight,
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
