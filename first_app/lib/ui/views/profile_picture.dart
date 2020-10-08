import 'package:first_app/ui/views/rounded_corners.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String assetPath;
  final double size;

  const ProfilePicture({
    Key key,
    @required this.assetPath,
    this.size = 48.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedCorners(
      child: Container(
        width: size,
        child: Image.asset(assetPath),
      ),
    );
  }
}
