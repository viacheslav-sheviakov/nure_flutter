import 'package:flutter/material.dart';
import 'package:hero_widget_example/resourses/image_assets.dart';
import 'package:hero_widget_example/resourses/strings.dart';
import 'package:hero_widget_example/ui/pages/logo_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.homePageTitle),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => LogoPage(),
                ));
              },
              child: Hero(
                tag: "Logo",
                child: Container(
                  width: 100.0,
                  child: Image.asset(ImageAssets.flutterLogo),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Text(Strings.flutterLogoText),
          ],
        ),
      ),
    );
  }
}
