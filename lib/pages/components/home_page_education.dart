import 'package:flutter/material.dart';
import 'package:portfolio/data/user_data.dart';

class HomePageEducation extends StatelessWidget {
  const HomePageEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Educação',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Column(
          children: UserData.education.map((education) {
            return Column(
              children: [
                ListTile(
                  title: Text('${education['degree']}'),
                  subtitle: Text('${education['school']}'),
                  trailing: Text('${education['start']} - ${education['end']}'),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: UserData.education.last['degree'] != education['degree'],
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