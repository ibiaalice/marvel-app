import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/screen/characters/details/details_character_page.dart';
import 'package:marvel_app/screen/home/widgets/character_card.dart';

class CharactersList extends StatefulWidget {
  final List<Character> characters;
  final bool isLoading;
  const CharactersList({
    Key? key,
    required this.characters,
    required this.isLoading,
  }) : super(key: key);

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        if (widget.characters.isNotEmpty) ...[
          for (final Character character in widget.characters) ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailsCharacterPage(
                            character: character,
                          )),
                    ),
                  );
                },
                child: CharacterCard(character: character),
              ),
            ),
          ],
        ],
        if (widget.isLoading)
          const Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: CircularProgressIndicator(
                color: CustomColors.logo,
              ),
            ),
          )
      ],
    );
  }
}
