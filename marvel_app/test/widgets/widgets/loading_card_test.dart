import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/loading_card.dart';

void main() {
  testWidgets('Loading card test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 800,
                width: 600,
                child: LoadingCard(),
              ),
            ],
          ),
        ),
      ),
    ));

    expect(find.text('Loading, please wait...'), findsOneWidget);
    expect(find.text('Loaded!'), findsNothing);
  });
}
