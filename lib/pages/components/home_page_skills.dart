import 'package:flutter/material.dart';
import 'package:portfolio/data/user_data.dart';

class HomePageSkills extends StatelessWidget {
  const HomePageSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skills',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Wrap(
          spacing: 10,
          children: UserData.skills.map((skill) {
            return Chip(label: Text(skill));
          }).toList(),
        )
      ],
    );
  }
}