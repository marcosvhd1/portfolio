import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Marcos Vinícius Hellmann Delfino',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                'Desenvolvedor web e mobile focado em construir produtos com atenção extra aos detalhes.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    IconButton.outlined(
                      icon: const Icon(FontAwesomeIcons.globe),
                      onPressed: () => _launchUrl("https://www.google.com/maps/place/28%C2%B015'53.5%22S+49%C2%B001'13.6%22W/@-28.2699516,-49.0110314,15z/data=!4m4!3m3!8m2!3d-28.264867!4d-49.020449?entry=ttu"),
                    ),
                    IconButton.outlined(
                      icon: const Icon(Icons.email_outlined),
                      onPressed: () => _launchUrl("mailto:marcosvhd1@gmail.com"),
                    ),
                    IconButton.outlined(
                      icon: const Icon(FontAwesomeIcons.whatsapp),
                      onPressed: () => Platform.isAndroid ? _launchUrl("https://wa.me/5548996351582") : _launchUrl("https://api.whatsapp.com/send?phone=554899631582"),
                    ),
                    IconButton.outlined(
                      icon: const Icon(FontAwesomeIcons.github),
                      onPressed: () => _launchUrl('https://github.com/marcosvhd1'),
                    ),
                    IconButton.outlined(
                      icon: const Icon(FontAwesomeIcons.linkedin),
                      onPressed: () => _launchUrl('https://www.linkedin.com/in/marcos-hellmann-2776b6229/'),
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