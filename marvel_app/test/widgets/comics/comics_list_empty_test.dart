import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/comics/list/widgets/comics_list_empty.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets('Comics List Empty test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ComicsListEmpty(),
    ));

    expect(find.text('Sorry!'), findsOneWidget);

    expect(find.text('hhh'), findsNothing);

    await tester.pump();
  });
}
