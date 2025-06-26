import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/controllers/cubit/counter_cubit.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit,CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Simple Counter'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Text(
              '$_counter',
              style: TextStyle(fontSize: 48),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}