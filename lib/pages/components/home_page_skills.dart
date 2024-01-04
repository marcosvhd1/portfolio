import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageSkills extends StatelessWidget {
  const HomePageSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 6),
        Text(
          'Skills',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 6),
        Wrap(
          spacing: 10,
          children: [
            Chip(label: Text('Flutter'), avatar: FlutterLogo()),
            Chip(label: Text('React'), avatar: Icon(FontAwesomeIcons.react)),
            Chip(label: Text('Node.js'), avatar: Icon(FontAwesomeIcons.nodeJs)),
            Chip(label: Text('SQL'), avatar: Icon(FontAwesomeIcons.database)),
            Chip(label: Text('JavaScript'), avatar: Icon(FontAwesomeIcons.js)),
            Chip(label: Text('TypeScript')),
            Chip(label: Text('Dart')),
            Chip(label: Text('PHP'), avatar: Icon(FontAwesomeIcons.php)),
          ],
        ),
        SizedBox(height: 6),
      ],
    );
  }
}
