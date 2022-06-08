import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/search/widgets/search_text_form_field.dart';

void main() {
  testWidgets('Search TextFormField test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Column(
          children: [SearchTextFormField(onChanged: () {})],
        ),
      ),
    ));

    await tester.tap(find.byIcon(Icons.search));
    expect(find.text('none'), findsNothing);

    await tester.pump();
  });
}
