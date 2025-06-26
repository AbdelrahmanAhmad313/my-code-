import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/move_to.dart';

import 'field_details.dart';

class FootballWay extends StatefulWidget {
  const FootballWay({super.key});

  @override
  State<FootballWay> createState() => _FootballWayState();
}

class _FootballWayState extends State<FootballWay> {
  List<Map> data=[{
    "pageNo":1,
    "loc":"مقطم",
    "time":4,
    "pl":12
  },
    {
      "pageNo":2,
      "loc":"هرم",
      "time":4,
      "pl":12
    },
    {
      "pageNo":2,
      "loc":"تجمع الخامس",
      "time":4,
      "pl":12
    },
    {
      "pageNo":3,
      "loc":"مدينه نصر",
      "time":4,
      "pl":12
    },
    {
      "pageNo":4,
      "loc":"معادي",
      "time":4,
      "pl":12
    },

  ];
  List plList=[12,4,1,8,9];
  List locList=["مقطم","هرم","تجمع الخامس","مدينه نصر","معادي"];
  List timeList=[4,2,1,3,1];
  List imgList=[];
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
                    Text("عدد الساعات:${timeList[index]}"),
                    Text("عدد مطلوب: ${plList[index]}"),
                    Text("مكان:${locList[index]}"),
                  ],
                ),
              ],
            ),
          ),
        ),
        itemCount: data.length,

      ),
    );
  }
}
