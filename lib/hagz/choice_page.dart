import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/move_to.dart';

import 'football/football_way.dart';
import 'paddle/paddle_way.dart';
import 'player_type.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin:Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  isPadel=false;
                  moveTo(PlayerType());
                },
                child: Container(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Football",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            // FIX: Corrected assets folder case from 'assets/images/' to 'assets/Images/' for Android's case-sensitive asset lookup
                            // 'assets/images/football.jpg',
                            'assets/Images/football.jpg',
                            alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                ),
              ),
              GestureDetector(
                onTap: (){
                  isPadel=true;
                  moveTo(PlayerType());
                },
                child: Container(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Padel",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            // FIX: Corrected assets folder case from 'assets/images/' to 'assets/Images/' for Android's case-sensitive asset lookup
                            // 'assets/images/padel.jpg',
                            'assets/Images/padel.jpg',
                            alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
