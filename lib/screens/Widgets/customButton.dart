import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String name;
  final Color textColor;
  final Color color;
  final double width;
  final double height;
  final double FontSize;
  final FontWeight fontWeight;

  const customButton({
    super.key,
    required this.name,
    required this.textColor,
    required this.color,
    required this.width,
    required this.height,
    required this.FontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(
            fontSize: FontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
