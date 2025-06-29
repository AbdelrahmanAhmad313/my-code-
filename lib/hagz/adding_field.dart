import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/app_button.dart';
import 'package:myapp/core/shortcuts/app_input.dart';

import 'paddle/paddle_way.dart';

class AddingField extends StatefulWidget {
  const AddingField({super.key});

  @override
  State<AddingField> createState() => _AddingFieldState();
}

class _AddingFieldState extends State<AddingField> {
  final TextEditingController plNum = TextEditingController();
  final TextEditingController place = TextEditingController();
  late String playersNum;
  late String location;
  final TimeOfDay time=TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      persistentFooterButtons: [
        appButton(
          onPressed: () {
            playersNum =plNum.toString();
            plNum.clear();
            location=place.toString();
            place.clear();
            setState(() {});
          },
          borderColor: Colors.white,
          text: "تمام",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          borderRadius: BorderRadius.circular(10),
          width: 450,
          height: 75,
          textColor: Colors.white,
          color:isPadel?Colors.blue: Colors.green,
        ),
      ],
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          appInput(
            controller: plNum,
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
            controller: place,
            label: "المكان",
            textDirection: TextDirection.rtl,
            borderradius: BorderRadius.circular(25),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              appButton(
                width: 150,
                height: 50,
                color: Colors.green,
                borderColor: Colors.white,
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
                color: Colors.green,
                borderColor: Colors.white,
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
          SizedBox(height: 25,),
          Text(time.toString(),style: TextStyle(fontSize: 75),),
        ],
      ),
    );
  }

}

