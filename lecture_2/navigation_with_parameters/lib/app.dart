import 'package:flutter/material.dart';
import 'package:navigation_with_parameters/resourses/strings.dart';
import 'package:navigation_with_parameters/ui/pages/shop_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShopPage(),
    );
  }
}