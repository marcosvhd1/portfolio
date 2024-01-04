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
        ListTile(
          title: Text('Help Desk'),
          subtitle: Text('Cubo Sistemas'),
          trailing: Text('2020 - 2022'),
        ),
        ListTile(
          title: Text('Desenvolvedor Web e Mobile'),
          subtitle: Text('Cubo Sistemas'),
          trailing: Text('2022 - 2023'),
        ),
        SizedBox(height: 6),
      ],
    );
  }
}
