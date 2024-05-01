import 'package:flutter/material.dart';

class CustomCircleAvatarWidget extends StatelessWidget {
  const CustomCircleAvatarWidget({
    super.key,
    required this.imageUrl
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 30,
        child: Image.asset(
         imageUrl,
          //color: colorWhite,
        ),
      ),
    );
  }
}
