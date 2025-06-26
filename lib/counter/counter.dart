import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/controllers/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {

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
              state.count.toString(),
              style: TextStyle(fontSize: 48),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().dec();

                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().inc();
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