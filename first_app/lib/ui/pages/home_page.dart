import 'package:first_app/resources/app_strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const maxMockContacts = 100;

  List<String> _contacts = [];

  void _generateList() {
    for (int i = 1; i <= maxMockContacts; i++) {
      _contacts.add("Contact #$i");
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _generateList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _contacts.map(_buildTestContainer).toList(),
        ),
      ),
    );
  }

  Widget _buildTestContainer(String contactName) {
    return Container(
      // dp, dip
      width: double.infinity,
      color: Colors.lightBlue,
      padding: EdgeInsets.all(18.0),
      child: Text(contactName),
    );
  }
}
