import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/counter/counter_bloc.dart';
import '../../core/counter/counter_event.dart';

class CounterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            onPressed: () => context.read<CounterBloc>().add(Increment()),
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: FloatingActionButton(
            shape: CircleBorder(),
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () => context.read<CounterBloc>().add(Decrement()),
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
