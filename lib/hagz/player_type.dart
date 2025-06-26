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
              child: Center(
                child: Text("عايز ألعب"),
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
              child: Stack(
                children: [
                  Center(
                    child: appImages(
                      path: "football-ball.svg",
                    ),
                  ),
                  Center(
                    child: Text("معايا ملعب"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
