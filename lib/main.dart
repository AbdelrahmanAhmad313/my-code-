

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bloc/view.dart';
import 'core/shortcuts/move_to.dart';
import 'hagz/football_way.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginView(),
    );
  }
}

