import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailsRow({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontFamily: 'Marvel Font',
            ),
          ),
          subtitle: Text(
            subtitle != '' ? subtitle : "[TOP SECRET]",
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Indie',
            ),
          ),
        ),
        const Divider(
          endIndent: 10,
          indent: 10,
          height: 0,
          thickness: 1,
        ),
      ],
    );
  }
}
