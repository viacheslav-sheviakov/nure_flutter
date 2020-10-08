import 'package:first_app/models/contact.dart';
import 'package:first_app/resources/app_image_assets.dart';

class ContactsMock {
  ContactsMock._();

  static const Contact defaultContact = Contact(
    name: "Unknown",
    surname: "Undefined",
    phoneNumber: "+38 (000) 000-00-00",
    description: "Nope...",
    imageAssetPath: AppImageAssets.man1,
  );

  static const List<Contact> contacts = [
    Contact(
      name: "John",
      surname: "Wu",
      phoneNumber: "+38 (099) 123-45-67",
      imageAssetPath: AppImageAssets.man1,
      description: "Project Manager",
    ),
    Contact(
      name: "Sarah",
      surname: "Doe",
      phoneNumber: "+38 (066) 321-54-76",
      imageAssetPath: AppImageAssets.woman1,
      description: "Human Resources",
    ),
    Contact(
      name: "Jane",
      surname: "Smith",
      phoneNumber: "+38 (057) 337-12-34",
      imageAssetPath: AppImageAssets.woman2,
      description: "Mobile Developer",
    ),
    Contact(
      name: "Kate",
      surname: "Tompson",
      phoneNumber: "+38 (098) 752-21-43",
      imageAssetPath: AppImageAssets.woman3,
      description: "CEO",
    ),
  ];
}