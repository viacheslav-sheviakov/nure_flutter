import 'package:first_app/mocks/contacts_mock.dart';
import 'package:first_app/models/contact.dart';
import 'package:first_app/ui/pages/contact_page.dart';
import 'package:first_app/ui/views/profile_picture.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final Contact _contact;

  const ContactTile({
    Key key,
    @required Contact contact,
  })  : _contact = contact == null ? ContactsMock.defaultContact : contact,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ContactPage(contact: _contact)),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            ProfilePicture(
              tag: _contact.uniqueTag,
              assetPath: _contact.imageAssetPath,
            ),
            SizedBox(width: 22.0),
            Expanded(
              child: _buildContactShortInfo(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactShortInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _contact.fullName,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          _contact.phoneNumber,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
