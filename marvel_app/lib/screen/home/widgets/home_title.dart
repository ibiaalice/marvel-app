import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Text(
        'All Characters',
        style: TextStyle(fontSize: 40, fontFamily: 'Marvel Font'),
      ),
    );
  }
}
