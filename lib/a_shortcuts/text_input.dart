import 'package:flutter/material.dart';
class TextInput extends StatelessWidget {

  final double borderSide;
  const TextInput(
      {super.key,
        this.borderSide = 0,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderSide),

          )
      ),
    );
  }
}
