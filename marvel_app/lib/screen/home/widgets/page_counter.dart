import 'package:flutter/material.dart';

class PageCounter extends StatelessWidget {
  final String value;

  const PageCounter({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff96979a),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          'page $value',
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'Marvel Font',
          ),
        ),
      ),
    );
  }
}
