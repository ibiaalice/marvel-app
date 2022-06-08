import 'package:flutter/material.dart';
import 'package:marvel_app/screen/widgets/marvel_logo_text.dart';

class LogoAppBar extends StatelessWidget {
  final String title;
  const LogoAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MarvelLogoText(),
        const SizedBox(width: 5),
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w300, fontFamily: 'Marvel Font'),
        )
      ],
    );
  }
}
