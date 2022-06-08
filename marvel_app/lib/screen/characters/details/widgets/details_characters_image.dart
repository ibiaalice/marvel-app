import 'package:flutter/material.dart';

class DetailsCharactersImage extends StatelessWidget {
  final String imgUrl;

  const DetailsCharactersImage({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(
              imgUrl,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
