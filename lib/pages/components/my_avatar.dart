import 'package:flutter/material.dart';
import 'package:portfolio/data/user_data.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(UserData.avatarUrl),
      ),
    );
  }
}