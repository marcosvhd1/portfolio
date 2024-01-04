import 'package:flutter/material.dart';
import 'package:portfolio/pages/components/home_page_about.dart';
import 'package:portfolio/pages/components/home_page_contact.dart';
import 'package:portfolio/pages/components/home_page_education.dart';
import 'package:portfolio/pages/components/home_page_experience.dart';
import 'package:portfolio/pages/components/home_page_skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: ListView(
            children: const [
              HomePageContact(),
              HomePageAbout(),
              HomePageExperience(),
              HomePageEducation(),
              HomePageSkills(),
            ],
          ),
        ),
      ),
    );
  }
}
