import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/move_to.dart';
import 'package:myapp/hagz/adding_field.dart';
import 'package:myapp/hagz/paddle/paddle_way.dart';

import '../field_details.dart';

class FootballWay extends StatelessWidget {
  const FootballWay({super.key});
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Text(
          "ملاعب",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        )),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>GestureDetector(
          onTap: (){
            isPadel=false;
            moveTo(DetailsPage());
          },
          child: Container(
            height: 150,
            width: 450,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 7,
                    blurStyle: BlurStyle.normal,
                    color: Colors.grey,
                    offset: Offset(5,5),
                    spreadRadius: 2.0
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: appImages(path: "football field.jpg")),
                Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("من:${list[0]["startTime"]}"),
                    Text("عدد مطلوب: ${list[0]["players"]}"),
                    Text("مكان:${list[0]["location"]}"),
                  ],
                ),
              ],
            ),
          ),
        ),
        itemCount: list.length,
      ),
    );
  }
}


