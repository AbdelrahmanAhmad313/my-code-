import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/app_button.dart';

import 'adding_field.dart';
import 'football/football_way.dart';
import 'paddle/paddle_way.dart';

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
        backgroundColor:isPadel?Colors.blue: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: appImages(
                path: isPadel?"padel field.jpg":"football field.jpg",
                width: 450,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text("من:${list[0]["startTime"]}"),
            Text("عدد مطلوب: ${list[0]["players"]}"),
            Text("مكان:${list[0]["location"]}"),
          ],
        ),
      ),
      persistentFooterButtons: [
        appButton(
          onPressed: () {},
          text: "انا معاكوا",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          borderRadius: BorderRadius.circular(10),
          width: 450,
          height: 75,
          color:isPadel?Colors.blue: Colors.green,
        ),
      ],
    );
  }
}
