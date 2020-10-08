import 'package:first_app/mocks/contacts_mock.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/contact_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homePageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ContactsMock.contacts
              .map((contact) => ContactTile(contact: contact))
              .toList(),
        ),
      ),
    );
  }
}
