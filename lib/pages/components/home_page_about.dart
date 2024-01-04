import 'package:flutter/material.dart';

class HomePageAbout extends StatelessWidget {
  const HomePageAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sobre',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Desenvolvedor de software experiente com habilidades em JavaScript, Flutter e PHP. Experiência em desenvolvimento de aplicativos móveis e web, bem como em soluções de back-end. Meu objetivo é trabalhar em uma empresa inovadora onde eu possa aplicar minhas habilidades de programação para criar soluções de alta qualidade, contribuindo para o sucesso da empresa.',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}