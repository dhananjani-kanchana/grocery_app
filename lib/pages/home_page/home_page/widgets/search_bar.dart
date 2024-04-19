import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.50),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xff000000).withOpacity(.34),
          ),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Color(0xffD9D9D9),
                size: 30,
              ),
            ),
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "search here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Color(0xffC3C3C3),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
