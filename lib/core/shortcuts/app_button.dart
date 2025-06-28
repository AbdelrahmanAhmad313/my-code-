

import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appButton extends StatelessWidget {
  final String text;
  final double width,height,fontSize;
  final VoidCallback onPressed;
  final Color color,textColor;
  final BorderRadius borderRadius;
  final FontWeight fontWeight;
  const appButton({super.key,
    this.text="",
    required this.onPressed,
    this.color=Colors.black,
    required this.borderRadius,
    this.width=100,
    this.height=100,
    this.fontSize=14,
    this.fontWeight=FontWeight.w400,
     this.textColor=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child:Text(text,style: TextStyle(fontSize: fontSize,fontWeight:fontWeight,color: textColor ),) ,
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
