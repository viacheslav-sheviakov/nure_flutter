import 'package:flutter/material.dart';
import 'package:lesson_2_navigation/resourses/strings.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(Strings.secondPageTitle),
      ),
      body: Center(
        child: Text(Strings.secondPageWelcomeText),
      ),
    );
  }
}
