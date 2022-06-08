import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Card(
        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Marvel.shield,
                size: 150,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Loading, please wait...',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Marvel Font'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 30,
                ),
                child: Center(
                  child: LinearProgressIndicator(
                    backgroundColor: CustomColors.splashLogo,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
