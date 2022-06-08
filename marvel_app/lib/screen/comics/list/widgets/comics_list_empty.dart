import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';

class ComicsListEmpty extends StatelessWidget {
  const ComicsListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Card(
        child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Marvel.xmen,
                size: 200,
                color: CustomColors.logo,
              ),
              Text(
                'Sorry!',
                style: TextStyle(fontSize: 40, fontFamily: 'Marvel Font'),
              ),
              Text(
                'No have comics for this character',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontFamily: 'Marvel Font'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
