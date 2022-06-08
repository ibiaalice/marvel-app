import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/license_footer.dart';

void main() {
  testWidgets('license footer test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: const LicenseFooter(),
        ),
      ),
    ));

    expect(find.text('©2022 MARVEL'), findsOneWidget);
    expect(find.text('©2022 DC Comics'), findsNothing);
  });
}
