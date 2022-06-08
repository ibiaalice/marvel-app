import 'package:flutter/material.dart';

class TitleBody extends StatelessWidget {
  final String title;

  const TitleBody({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 40,
          fontFamily: 'Marvel Font',
        ),
      ),
    );
  }
}
