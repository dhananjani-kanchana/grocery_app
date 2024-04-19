import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: Color(0xff9E00FF)),
    child: const Center(
      child: Icon(
        Icons.add_location_alt,
        color: Colors.white,
      ),
    ),
  ),
);

Widget appBarTitle = SizedBox(
  width: double.infinity,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Delivery Address",
        style: TextStyle(
          fontSize: 20,
          color: Color(0xff3B3636).withOpacity(0.47),
        ),
      ),
      const Text(
        "92, High street, Sweden",
        style: TextStyle(
            fontSize: 18,
            color: Color(0xff000000),
            fontWeight: FontWeight.w600),
      ),
    ],
  ),
);

List<Widget>? appBarActions = [
  Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffFF9900).withOpacity(0.62),
      ),
      child: const Center(
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
    ),
  ),
];
