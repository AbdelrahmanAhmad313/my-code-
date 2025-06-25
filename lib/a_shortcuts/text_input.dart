import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final int borderSide;
  const TextInput({super.key,this.borderSide=0});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

      ),
    );
  }
}
