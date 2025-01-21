import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/counter/counter_bloc.dart';
import '../../core/counter/counter_state.dart';
import '../../core/theme/theme_bloc.dart';
import '../../core/theme/theme_event.dart';
import '../widget/counter_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLoC Tutorial',
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeBloc>().add(ToggleTheme()),        //icon to change theme
          ),
        ],
      ),
      body: Center(
        child: BlocConsumer<CounterBloc, CounterState>(
          listener: (context, state) {
            if (state.value == 5) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Counter reached 5!')),
              );
            }
            if (state.value == -1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Counter reached -1!')),
              );
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Value:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${state.value}',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CounterButtons(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
