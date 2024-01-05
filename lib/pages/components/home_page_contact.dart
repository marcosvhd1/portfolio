import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/data/user_data.dart';
import 'package:portfolio/pages/components/my_avatar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageContact extends StatelessWidget {
  const HomePageContact({super.key});

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                UserData.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                UserData.summary,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  children: [
                    IconButton.outlined(
                      icon: Image.asset(
                        height: 25,
                        isDarkMode ? 'assets/images/map-white.png' : 'assets/images/map.png',
                      ),
                      onPressed: () => _launchUrl(UserData.mapUrl),
                    ),
                    IconButton.outlined(
                      icon: Image.asset(
                        height: 25,
                        isDarkMode ? 'assets/images/gmail-white.png' : 'assets/images/gmail.png',
                      ),
                      onPressed: () => _launchUrl("mailto:${UserData.mail}"),
                    ),
                    IconButton.outlined(
                      icon: Image.asset(
                        height: 25,
                        isDarkMode ? 'assets/images/whatsapp-white.png' : 'assets/images/whatsapp.png',
                      ),
                      onPressed: () => Platform.isAndroid ? _launchUrl("https://wa.me/${UserData.whatsapp}") : _launchUrl("https://api.whatsapp.com/send?phone=${UserData.whatsapp}"),
                    ),
                    IconButton.outlined(
                      icon: Image.asset(
                        height: 25,
                        isDarkMode ? 'assets/images/github-white.png' : 'assets/images/github.png',
                      ),
                      onPressed: () => _launchUrl(UserData.githubUrl),
                    ),
                    IconButton.outlined(
                      icon: Image.asset(
                        height: 25,
                        isDarkMode ? 'assets/images/linkedin-white.png' : 'assets/images/linkedin.png',
                      ),
                      onPressed: () => _launchUrl(UserData.linkedinUrl),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const MyAvatar(),
      ],
    );
  }
}