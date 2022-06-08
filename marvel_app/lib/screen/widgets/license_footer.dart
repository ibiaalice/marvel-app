import 'package:flutter/material.dart';

class LicenseFooter extends StatelessWidget {
  const LicenseFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '©2022 MARVEL',
        style: TextStyle(fontFamily: 'Marvel Font'),
      ),
    );
  }
}
