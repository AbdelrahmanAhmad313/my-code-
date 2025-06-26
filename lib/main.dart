import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/controllers/cubit/counter_cubit.dart';
import 'core/shortcuts/move_to.dart';
import 'counter/counter.dart';
import 'hagz/choice_page.dart';
import 'hagz/football/football_way.dart';
import 'hagz/paddle/paddle_way.dart';
import 'hagz/player_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: PlayerType(),
      ),
    );
  }
}

