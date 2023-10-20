import 'package:flutter/material.dart';

class customButton extends StatefulWidget {
  final String name;
  final Color textColor;
  final Color color;
  final double width;
  final double height;
  final double FontSize;
  final FontWeight fontWeight;

  customButton({
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
  State<customButton> createState() => _customButtonState();
}

class _customButtonState extends State<customButton> {
  late Function() OnPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: widget.color),
        onPressed: OnPressed,
        child: Text(
          widget.name,
          style: TextStyle(
            fontSize: widget.FontSize,
            fontWeight: widget.fontWeight,
            color: widget.textColor,
          ),
        ),
      ),
    );
  }
}
