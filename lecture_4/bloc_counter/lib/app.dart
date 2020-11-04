import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/resources/app_strings.dart';
import 'package:bloc_counter/ui/pages/home_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CounterBloc(), singleton: false),
      ],
      child: MaterialApp(
        title: AppStrings.AppName,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
