import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/move_to.dart';
import 'package:myapp/hagz/field_details.dart';
import 'package:myapp/hagz/football/football_way.dart';

class PaddleWay extends StatelessWidget {
  const PaddleWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
        ),
        title: Center(
            child: Text(
              "ملاعب",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            )),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>GestureDetector(
          onTap: (){
            isPadel =true;
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
                    child: appImages(path: "padel field.jpg")),
                Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("عدد الساعات:${paddleData[index]["time"]}"),
                    Text("عدد مطلوب: ${paddleData[index]["pl"]}"),
                    Text("مكان:${paddleData[index]["loc"]}"),
                  ],
                ),
              ],
            ),
          ),
        ),
        itemCount: paddleData.length,
      ),
    );
  }
}
List<Map> paddleData=[{
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
bool isPadel =false;