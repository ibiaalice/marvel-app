import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/usecases/characters/get_characters.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  final GetCharacters _getCharacters = GetCharacters();

  test('get characters by offset', () async {
    List<Character> characters = [];

    expect(characters.isEmpty, equals(true));

    characters = await _getCharacters.byOffSet(0);

    expect(characters.isEmpty, equals(false));
    expect(characters.isNotEmpty, equals(true));
  });

  test('get characters by name', () async {
    List<Character> characters = [];

    expect(characters.isEmpty, equals(true));

    characters = await _getCharacters.byName('Iron Man');

    expect(characters.isEmpty, equals(false));
    expect(characters.isNotEmpty, equals(true));

    characters = await _getCharacters.byName('Dollynho');

    expect(characters.isEmpty, equals(true)); //acho ultrajante
  });
}
