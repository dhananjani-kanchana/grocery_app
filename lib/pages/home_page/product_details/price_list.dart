import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PriceListWidget extends StatelessWidget {
  final int circleNumber;
  final String productName;
  final double productQuantity;
  final String unitName;

  const PriceListWidget({
    super.key,
    required this.circleNumber,
    required this.productName,
    required this.productQuantity,
    required this.unitName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xffFFE500),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    circleNumber.toString(),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          productName,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 150,
                margin: const EdgeInsets.only(right: 50),
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9).withOpacity(0.40),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "$productQuantity $unitName",
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color(0xff3B3636),
                          width: 1.5,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color(0xff3B3636),
                          width: 1.5,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: const Color(0xff000000).withOpacity(0.13),
          )
        ],
      ),
    );
  }
}
