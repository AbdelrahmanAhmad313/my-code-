import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/controllers/bloc/counter_bloc.dart';
import 'package:myapp/controllers/cubit/counter_cubit.dart';
import 'core/shortcuts/move_to.dart';
import 'counter/counter.dart';
import 'hagz/adding_field.dart';
import 'hagz/choice_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: AddingField(),
      ),
    );
  }
}

