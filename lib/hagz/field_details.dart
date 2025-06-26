import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/app_button.dart';

import 'football_way.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("تفاصيل")),
        backgroundColor: Colors.green,
        shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
        ) ,
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: appImages(path: "football field.jpg",
                width: 400,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 25,),
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("عدد الساعات:${data[pagenum]["time"]}"),
              Text("عدد مطلوب: ${data[pagenum]["pl"]}"),
              Text("مكان:${data[pagenum]["loc"]}"),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        appButton(onPressed: (){},
        text: "انا معاكوا",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          borderRadius: BorderRadius.circular(10),
          width: 400,
          height: 75,
          color: Colors.green,
        ),
      ],
    );
  }
}