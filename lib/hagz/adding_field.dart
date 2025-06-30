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
  final TextEditingController timeFrom = TextEditingController();
  final TextEditingController timeTo = TextEditingController();
  late TimeOfDay? selectedTimeFrom;
  late TimeOfDay? selectedTimeTo;
  late int players;
  late String location;
  late TimeOfDay startTime,endTime;
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
            players=int.tryParse(plNum.text)!;
            plNum.clear();
            location=place.text;
            place.clear();
            startTime=selectedTimeFrom!;
            endTime=selectedTimeTo!;
            timeTo.clear();
            timeFrom.clear();
          },
          borderColor: Colors.white,
          text: "تمام",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          borderRadius: BorderRadius.circular(10),
          width: 450,
          height: 75,
          textColor: Colors.white,
          color: isPadel ? Colors.blue : Colors.green,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: 150,
                  child: TextFormField(
                    onTapOutside:(event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    readOnly: true,
                    controller: timeFrom,
                    style: TextStyle(
                      color: Colors.black
                    ),
                    decoration: InputDecoration(
                      label: Text("إلى"),
                      fillColor: Colors.black,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    onTap: () async {
                      selectedTimeTo = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (selectedTimeTo != null) {
                        timeFrom.text = selectedTimeTo.toString();
                      }
                    }
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: 150,
                  child: TextFormField(
                    onTapOutside:(event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    readOnly: true,
                    controller: timeTo,
                    style: TextStyle(
                      color: Colors.black
                    ),
                    decoration: InputDecoration(
                      label: Text("من"),
                      fillColor: Colors.black,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    onTap: () async {
                       selectedTimeFrom = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (selectedTimeFrom != null) {
                        timeTo.text = selectedTimeFrom.toString();
                      }
                    }
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
