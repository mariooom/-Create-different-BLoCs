import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/counter/counter_bloc.dart';
import '../core/theme/theme_bloc.dart';
import '../core/theme/theme_state.dart';
import '../view/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeState.isDark
                ? ThemeData.dark().copyWith(          //dark mode primary color
                    primaryColor: Colors.green,
                  )
                : ThemeData.light().copyWith(
                    primaryColor: Colors.blue,            //light mode primary color
                  ),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
