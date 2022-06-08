import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/screen/comics/details/comics_details_page.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets('Comics Details Page test', (WidgetTester tester) async {
    final comic = Comic(
      id: 40028922,
      title: 'Sesinho conhecimento é diferente de informação',
      description:
          'O mundo de hoje produz cada vez mais informação. Por isso, é tãoimportante conhecermos diferentes pontos de vista sobre os assuntos,para que a gente consiga formar nossa própria opinião. Na história destaedição, a turma analisa dois assuntos bem atuais, dos quais você também já deve ter ouvido falar. Boa leitura!',
      imgUrl:
          'https://ldhomologacao.com.br/publico/images/sesinho/ydys5a3xt9va.png',
      lastPublication: '2014-04-29T14:18:17-0400',
      diamondCode: 'Sesi 2001',
      pageCount: 50,
    );

    await tester.pumpWidget(MaterialApp(
      home: ComicsDetailsPage(
        comic: comic,
      ),
    ));

    expect(find.text('Details Comic'), findsOneWidget);

    await tester.pump();
  });
}
