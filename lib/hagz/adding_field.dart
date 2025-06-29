import 'package:basic_clocks/clocks.dart';
import 'package:basic_clocks/data_models/clock_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/app_button.dart';
import 'package:myapp/core/shortcuts/app_input.dart';

class AddingField extends StatefulWidget {
  const AddingField({super.key});

  @override
  State<AddingField> createState() => _AddingFieldState();
}

class _AddingFieldState extends State<AddingField> {
  final timeOfDay = const TimeOfDay(hour: 3, minute: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("أضف مكان")),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          appInput(
            label: "العدد المطلوب",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 25,
          ),
          appInput(
            label: "المكان",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              appButton(
                width: 150,
                height: 50,
                color: Colors.white,
                text: "إلي",
                onPressed: () {
                  showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(hour: 12, minute: 0)
                  );
                },
                borderRadius: BorderRadius.circular(15),
              ),
              SizedBox(width: 15,),
              appButton(
                width: 150,
                height: 50,
                color: Colors.white,
                text: "من",
                onPressed: () {
                  showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(hour: 12, minute: 0)
                  );
                },
                borderRadius: BorderRadius.circular(15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

