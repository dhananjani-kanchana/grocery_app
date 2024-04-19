import 'package:flutter/material.dart';

class SharedBanner extends StatelessWidget {
  final double bannerHeight = 80;
  const SharedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bannerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffF2E4CE),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffFF9900),
          )),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffFF9900),
              ),
            ),
            Text(
              "Sped payments with master and visa",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff3B3636).withOpacity(.47),
              ),
            )
          ],
        ),
      ),
    );
  }
}
