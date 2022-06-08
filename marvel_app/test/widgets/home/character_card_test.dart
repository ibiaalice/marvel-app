import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/screen/home/widgets/character_card.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets('Character Card test', (WidgetTester tester) async {
    final character = Character(
      id: 123,
      name: 'Dollynho',
      description: 'Seu Amiguinho!',
      modified: 'modified',
      imgUrl:
          'https://media.sketchfab.com/models/12b498fe0ec84ef3a68ff6a912ece7ca/thumbnails/40412c4ad4e74e2f9fc55e9b539a4453/d928b9a5d4ea459485ccbf0fd9bd10f9.jpeg',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                CharacterCard(
                  character: character,
                )
              ],
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Dollynho'));
    expect(find.text('[top secret]'), findsNothing);

    await tester.pump();
  });
}
