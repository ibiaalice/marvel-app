import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/title_body.dart';

void main() {
  testWidgets('Title Body Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [TitleBody(title: 'Title')],
        ),
      ),
    ));

    expect(find.text('Title'), findsOneWidget);
    expect(find.text('none'), findsNothing);

    await tester.pump();
  });
}
