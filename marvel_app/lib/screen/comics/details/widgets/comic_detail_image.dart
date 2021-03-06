import 'package:flutter/material.dart';

class ComicDetailsImage extends StatelessWidget {
  final String imgUrl;

  const ComicDetailsImage({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Image.network(
          imgUrl,
          scale: 1.5,
        ),
      ),
    );
  }
}
