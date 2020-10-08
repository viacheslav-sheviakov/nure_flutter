import 'package:flutter/material.dart';
import 'package:hero_widget_example/resourses/image_assets.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "Logo",
          child: Image.asset(ImageAssets.flutterLogo),
        ),
      ),
    );
  }
}
