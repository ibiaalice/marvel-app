//

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/search/search_page.dart';
import 'package:marvel_app/screen/search/widgets/search_text_form_field.dart';

void main() {
  testWidgets('Search Page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SearchPage(),
    ));

    await tester.tap(find.text('Search for character name!'));
    expect(find.text('Search none!'), findsNothing);

    await tester.pump();
  });
}
