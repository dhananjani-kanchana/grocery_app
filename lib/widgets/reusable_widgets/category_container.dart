import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final String categoryDescription;
  final Color titleColor;
  final Color descriptionColor;
  final Color largeBoxColor;
  final Color smallBoxColor;

  final double cardWidth = 200;
  final double cardHeight = 240;

  const CategoryContainer({
    super.key,
    required this.categoryName,
    required this.categoryDescription,
    required this.titleColor,
    required this.descriptionColor,
    required this.largeBoxColor,
    required this.smallBoxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: largeBoxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              categoryName,
              style: TextStyle(
                color: titleColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              categoryDescription,
              style: TextStyle(
                color: descriptionColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 80,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: smallBoxColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
