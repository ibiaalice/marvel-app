import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';

class DetailsCharacterHeader extends StatelessWidget {
  const DetailsCharacterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: 100,
      child: Row(
        children: [
          const Icon(
            Marvel.shield,
            size: 100,
            color: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'S.H.I.E.L.D',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -3,
                ),
              ),
              Text(
                'AGENT CANDIDATE FORM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Marvel Font'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
