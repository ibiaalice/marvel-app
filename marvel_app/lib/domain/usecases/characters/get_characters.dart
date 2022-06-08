import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/services/characters_service.dart';

class GetCharacters {
  final CharactersService _charactersService = CharactersService();

  Future<List<Character>> byOffSet(int offSet) async {
    List<Character> characters = [];

    final result =
        await _charactersService.getCharactersByOffSet(offSet.toString());

    List charactersData = result['results'];

    for (final Map characterData in charactersData) {
      Character character = Character.fromMap(characterData);

      if (character.imgUrl.contains('image_not_available')) continue;

      characters.add(character);
    }
    return characters;
  }

  Future<List<Character>> byName(String name) async {
    List<Character> characters = [];
    final result = await _charactersService.searchByName(name);

    List charactersData = result['results'];

    for (final Map characterData in charactersData) {
      Character character = Character.fromMap(characterData);
      if (character.imgUrl.contains('image_not_available')) continue;
      characters.add(character);
    }

    return characters;
  }
}
