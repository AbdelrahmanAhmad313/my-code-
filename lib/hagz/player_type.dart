import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/Images.dart';

class PlayerType extends StatelessWidget {
  const PlayerType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      blurStyle: BlurStyle.normal,
                      color: Colors.grey,
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
                        path: "football-soccer.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 50),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      blurStyle: BlurStyle.normal,
                      color: Colors.grey,
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
                        path: "football-soccer.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
