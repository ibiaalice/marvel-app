import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/details_row.dart';

void main() {
  testWidgets('DetailsRow test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body: ListView(
        children: const [
          DetailsRow(title: 'title', subtitle: 'subtitle'),
        ],
      )),
    ));

    expect(find.text('title'), findsOneWidget);
    expect(find.text('subtitle'), findsOneWidget);
    expect(find.text('[top secret]'), findsNothing);
  });
}
