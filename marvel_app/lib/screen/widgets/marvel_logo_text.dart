import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';

class MarvelLogoText extends StatelessWidget {
  const MarvelLogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      color: CustomColors.logo,
      child: const Text(
        ' MARVEL',
        style: TextStyle(
          height: 1,
          fontWeight: FontWeight.w700,
          letterSpacing: -5,
          fontSize: 30,
        ),
      ),
    );
  }
}
