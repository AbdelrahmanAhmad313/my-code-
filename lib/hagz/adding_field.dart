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
      body: Column(
        children: [
          SizedBox(height: 25,),
          appInput(
            label: "العدد المطلوب",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),SizedBox(height: 25,),
          appInput(
            label: "عدد الساعات",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),SizedBox(height: 25,),
          appInput(
            label: "المكان",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),
          SizedBox(height: 25,),
          appInput(
            keyboardtype: TextInputType.numberWithOptions(decimal: false,signed: true),
          )
        ],
      ),
    );
  }
}
