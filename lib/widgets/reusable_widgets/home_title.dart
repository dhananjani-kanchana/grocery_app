import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String mainTitle;
  const MainTitle({super.key, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Text(
        mainTitle,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
