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

late int pagenum;
List<Map> data=[{
  "pageNo":1,
  "loc":"مقطم",
  "time":4,
  "pl":3
},
  {
    "pageNo":2,
    "loc":"هرم",
    "time":2,
    "pl":4
  },
  {
    "pageNo":3,
    "loc":"تجمع الخامس",
    "time":1,
    "pl":1
  },
  {
    "pageNo":4,
    "loc":"مدينه نصر",
    "time":3,
    "pl":8
  },
  {
    "pageNo":5,
    "loc":"معادي",
    "time":1,
    "pl":9
  },
];
class _FootballWayState extends State<FootballWay> {

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
            pagenum=index;
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
                    Text("عدد الساعات:${data[index]["time"]}"),
                    Text("عدد مطلوب: ${data[index]["pl"]}"),
                    Text("مكان:${data[index]["loc"]}"),
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
