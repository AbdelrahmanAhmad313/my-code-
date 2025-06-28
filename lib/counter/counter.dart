import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bloc/counter_bloc.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Counter'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              state.count.toString(),
              style: TextStyle(fontSize: 48),
            );
          },
        ),
      ),
      floatingActionButton: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(decEvent());
                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncEvent());
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          );
        },
      ),
    );
  }
}