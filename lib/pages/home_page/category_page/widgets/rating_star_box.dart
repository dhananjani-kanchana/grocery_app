import 'package:flutter/material.dart';

class RatingStarBox extends StatelessWidget {
  const RatingStarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xffCACACA).withOpacity(.31),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.star_sharp,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star_sharp,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star_sharp,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star_sharp,
              size: 40,
              color: Color(0xffFFE500),
            ),
            Icon(
              Icons.star_sharp,
              size: 40,
              color: const Color(0xff3B3636).withOpacity(.75),
            )
          ],
        ),
      ),
    );
  }
}
