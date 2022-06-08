import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';

class CopyrightAlertDialog extends StatelessWidget {
  const CopyrightAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        children: const [
          Icon(Marvel.spiderman),
          Text(
            'Thank you for installing this app, it was made with care and affection by a big geek fan but there is no affiliation with ©MARVEL, so all rights belong to them!',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Marvel Font',
            ),
          ),
          SizedBox(height: 10),
          Text('that\'s all, folks!'),
          Text('github@ibiaalice')
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('close'),
        )
      ],
    );
  }
}
