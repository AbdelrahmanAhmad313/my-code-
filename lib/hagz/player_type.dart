import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/Images.dart';
import 'package:myapp/core/shortcuts/move_to.dart';

import 'football/football_way.dart';
import 'paddle/paddle_way.dart';

class PlayerType extends StatelessWidget {
  const PlayerType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:isPadel?Colors.blue: Colors.green,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                moveTo(isPadel?PaddleWay():FootballWay());
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        blurStyle: BlurStyle.normal,
                        color: Colors.black,
                        offset: const Offset(-5.0, 5.0),
                        spreadRadius: 2.0),
                  ],
                ),
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("عايز ألعب",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                        child: appImages(
                          path:isPadel?"padel player.jpg":"football-soccer.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 50),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        blurStyle: BlurStyle.normal,
                        color: Colors.black,
                        offset: const Offset(-5.0, 5.0),
                        spreadRadius: 2.0),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("معايا ملعب",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                        child: appImages(
                          path:isPadel?"padel field choice.jpg": "soccer field.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
