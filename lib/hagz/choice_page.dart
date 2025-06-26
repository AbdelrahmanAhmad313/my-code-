

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/shortcuts/move_to.dart';

import 'football/football_way.dart';
import 'football/player_type.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset('assets/images/CR7.jpg',fit:BoxFit.cover,)),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap:() {
                      moveTo(PlayerType());
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Football",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/football.jpg',
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
                              spreadRadius: 2.0
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Padel",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/padel.jpg',
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
                            spreadRadius: 2.0
                        ),
                      ],
                    ),
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
