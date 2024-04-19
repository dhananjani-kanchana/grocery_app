import 'package:flutter/material.dart';

class SaleCostContainer extends StatelessWidget {
  final double bigContainerHeight = 210;
  final double bigContainerWidth = 200;
  final double smallContainerHeight = 80;
  final double smallContainerWidth = 180;
  final String containerTitle;
  final double itemQuantity;
  final double amountPrice;
  final String unit;

  const SaleCostContainer({
    super.key,
    required this.containerTitle,
    required this.itemQuantity,
    required this.amountPrice,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: bigContainerHeight,
        width: bigContainerWidth,
        decoration: BoxDecoration(
          color: const Color(0xff9E00FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: smallContainerHeight,
                width: smallContainerWidth,
                decoration: BoxDecoration(
                  color: const Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                containerTitle,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemQuantity.toString() + unit,
                        style: const TextStyle(
                            fontSize: 16, color: Color(0xffffffff)),
                      ),
                      Text(
                        "$amountPrice\$",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xffFFE500),
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
