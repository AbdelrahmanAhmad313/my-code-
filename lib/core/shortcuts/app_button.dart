import 'dart:ui';

import 'package:flutter/material.dart';

class appButton extends StatelessWidget {
  final String text;
  final double width,height;
  final VoidCallback onPressed;
  final Color color;
  final BorderRadius borderRadius;
  const appButton({super.key,
    this.text="",
    required this.onPressed,
    this.color=Colors.black,
    required this.borderRadius,
    this.width=100,
    this.height=100,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child:Text(text) ,
      style: FilledButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
