import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/app_input.dart';

class AddingField extends StatelessWidget {
  const AddingField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: appInput(
        label: "العدد المطلوب",
        textDirection: TextDirection.rtl,
        borderradius: BorderRadius.circular(15),
      ),
    );
  }
}
