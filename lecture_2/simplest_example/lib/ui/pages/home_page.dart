import 'package:flutter/material.dart';
import 'package:lesson_2_navigation/resourses/strings.dart';
import 'package:lesson_2_navigation/ui/pages/second_page.dart';

class HomePage extends StatelessWidget {
  void _navigateToSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SecondPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.homePageTitle),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(Strings.secondPageTitle),
          onPressed: () => _navigateToSecondPage(context),
        ),
      ),
    );
  }
}
