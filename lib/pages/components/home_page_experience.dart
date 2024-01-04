import 'package:flutter/material.dart';

class HomePageExperience extends StatelessWidget {
  const HomePageExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 6),
        Text(
          'Experiência',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 6),
        Text('Em desenvolvimento...'),
        SizedBox(height: 6),
      ],
    );
  }
}
