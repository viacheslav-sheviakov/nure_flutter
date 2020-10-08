import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String surname;
  final String phoneNumber;
  final String description;
  final String imageAssetPath;

  const Contact({
    @required this.name,
    @required this.surname,
    @required this.phoneNumber,
    @required this.description,
    @required this.imageAssetPath,
  });

  String get fullName => "$name $surname";
  String get uniqueTag => "$phoneNumber$hashCode";
}
