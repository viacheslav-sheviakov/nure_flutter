import 'package:first_app/models/contact.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/profile_picture.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final Contact contact;

  const ContactPage({
    Key key,
    @required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buildBackButton(context),
        title: Text(AppStrings.contactInfoPageTitle),
      ),
      body: Center(
        child: _buildPageContent(),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget _buildPageContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildContactPicture(),
        SizedBox(height: 16.0),
        _buildFullName(),
        SizedBox(height: 4.0),
        _buildDescription(),
        SizedBox(height: 24.0),
        _buildPhoneNumber(),
      ],
    );
  }

  Widget _buildContactPicture() {
    return Center(
      child: Hero(
        tag: contact.uniqueTag,
        child: ProfilePicture(
          assetPath: contact.imageAssetPath,
          size: 200.0,
        ),
      ),
    );
  }

  Widget _buildFullName() {
    return Text(
      contact.fullName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      contact.description,
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Text(
      contact.phoneNumber,
      style: TextStyle(
        fontSize: 16.0,
        fontStyle: FontStyle.italic,
        color: Colors.black54,
      ),
    );
  }
}
