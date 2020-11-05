import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_chopper/api/api_client.dart';
import 'package:simple_chopper/bloc/home_page_bloc.dart';
import 'package:simple_chopper/resources/app_strings.dart';
import 'package:simple_chopper/ui/pages/todos_home_page.dart';

class App extends StatelessWidget {
  void _restrictRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    _restrictRotation();
    return BlocProvider(
      blocs: [
        Bloc(
          (i) => HomePageBloc(i.getDependency<ApiClient>()),
          singleton: false,
        ),
      ],
      dependencies: [
        Dependency((i) => ApiClient(), singleton: true),
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TodosHomePage(),
      ),
    );
  }
}
