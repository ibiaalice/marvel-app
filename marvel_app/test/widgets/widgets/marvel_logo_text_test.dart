import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/marvel_logo_text.dart';

void main() {
  testWidgets('Marvel Logo Text test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: MarvelLogoText(),
      ),
    ));

    expect(find.text(' MARVEL'), findsOneWidget);
    expect(find.text('DC'), findsNothing);

    await tester.pump();
  });
}
