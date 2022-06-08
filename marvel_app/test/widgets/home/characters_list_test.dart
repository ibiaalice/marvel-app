import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/screen/home/widgets/characters_list.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets('Character list test', (WidgetTester tester) async {
    final List<Character> characters = [
      Character(
        id: 123,
        name: 'Dollynho',
        description: 'Seu Amiguinho!',
        modified: "2014-04-29T14:18:17-0400",
        imgUrl:
            'https://media.sketchfab.com/models/12b498fe0ec84ef3a68ff6a912ece7ca/thumbnails/40412c4ad4e74e2f9fc55e9b539a4453/d928b9a5d4ea459485ccbf0fd9bd10f9.jpeg',
      ),
      Character(
        id: 321,
        name: 'Bonequinho das casas Bahia',
        description: 'Lugar de comprar fiado é aqui!',
        modified: "2014-04-29T14:18:17-0400",
        imgUrl:
            'https://aletp.com.br/wp-content/uploads/2008/04/baianinho-mascote-casas-bahia.png',
      )
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CharactersList(characters: characters, isLoading: false),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Dollynho'));
    await tester.tap(find.text('Bonequinho das casas Bahia'));

    await tester.pump();
  });
}
