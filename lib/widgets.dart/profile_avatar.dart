import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import './../utilities/utilities.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;

  const ProfileAvatar({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.kAvatarDecoration,
      child: CircleAvatar(
        radius: 35,
        backgroundImage: CachedNetworkImageProvider(imageUrl),
      ),
    );
  }
}
