import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Color topColor;
  final Color bottomColor;
  final String buttonName;

  const GradientButton({
    super.key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.topColor,
    required this.bottomColor,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [
                topColor,
                bottomColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
