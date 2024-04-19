import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  final String productTitle;
  final String productDescription;

  const ProductInformation({
    super.key,
    required this.productTitle,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          productDescription,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
