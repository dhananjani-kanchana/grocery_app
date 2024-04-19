import 'package:flutter/material.dart';

class VegetableList extends StatelessWidget {
  final int circleNumber;
  final String vegetableDescription;
  const VegetableList(
      {super.key,
      required this.circleNumber,
      required this.vegetableDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                circleNumber.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 280,
            child: Text(
              vegetableDescription,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xff3B3636).withOpacity(.75),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
