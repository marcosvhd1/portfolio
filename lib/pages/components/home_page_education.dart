import 'package:flutter/material.dart';

class HomePageEducation extends StatelessWidget {
  const HomePageEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Educação',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        ListTile(
          title: Text('Bacharelado em Ciência da Computação'),
          subtitle: Text('UNISUL'),
          trailing: Text('2017 - 2022'),
        ),
      ],
    );
  }
}