import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/screen/widgets/copyright_alert_dialog.dart';

showAlertDialog(BuildContext context, alert, bool dismissible) {
  showDialog(
    barrierDismissible: dismissible,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void main() {
  testWidgets('Test CopyrightAlertDialog', (WidgetTester tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text('Test Copyright Alert Dialog'),
          ),
        ),
      ),
    );

    showAlertDialog(
      scaffoldKey.currentContext!,
      const CopyrightAlertDialog(),
      true,
    );

    await tester.pump();
  });
}
