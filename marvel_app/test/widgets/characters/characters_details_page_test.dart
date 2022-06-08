import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/screen/characters/details/details_character_page.dart';
import 'package:marvel_app/screen/comics/details/comics_details_page.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets(
    'Comics Details Page test',
    (WidgetTester tester) async {
      final character = Character(
        id: 123,
        name: 'Dollynho',
        description: 'Seu Amiguinho!',
        modified: '2014-04-29T14:18:17-0400',
        imgUrl:
            'https://media.sketchfab.com/models/12b498fe0ec84ef3a68ff6a912ece7ca/thumbnails/40412c4ad4e74e2f9fc55e9b539a4453/d928b9a5d4ea459485ccbf0fd9bd10f9.jpeg',
      );

      await tester.pumpWidget(MaterialApp(
        home: DetailsCharacterPage(character: character),
      ));

      expect(find.text('Character Details'), findsOneWidget);

      await tester.pump();
    },
  );
}
