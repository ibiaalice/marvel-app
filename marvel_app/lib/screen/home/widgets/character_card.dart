import 'package:flutter/material.dart';
import 'package:marvel_app/domain/entities/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 450,
        width: 300,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 325,
              width: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(character.imgUrl), fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              alignment: Alignment.bottomCenter,
              child: Text(
                character.name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 23,
                  fontFamily: 'Indie',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
