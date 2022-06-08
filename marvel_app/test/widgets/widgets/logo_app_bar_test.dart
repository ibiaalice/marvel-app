import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';

void main() {
  testWidgets('Logo appBar test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const LogoAppBar(
        title: 'test title',
      )),
    )));

    expect(find.text('test title'), findsOneWidget);
    expect(find.text('CHARACTERS'), findsNothing);
  });
}
