import 'package:flutter/material.dart';
import 'package:portfolio/data/user_data.dart';

class HomePageExperience extends StatelessWidget {
  const HomePageExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          'Experiência',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Column(
          children: UserData.work.map((work) {
            return Column(
              children: [
                ListTile(
                  title: Text('${work['title']}'),
                  subtitle: Text('${work['company']}'),
                  trailing: Text('${work['start']} - ${work['end']}'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text('${work['description']}'),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: UserData.work.last['description'] != work['description'],
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}