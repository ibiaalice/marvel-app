import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/screen/characters/details/widgets/details_characters_header.dart';
import 'package:marvel_app/screen/characters/details/widgets/details_characters_image.dart';
import 'package:marvel_app/screen/widgets/details_row.dart';
import 'package:marvel_app/screen/comics/list/comics_list_page.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';

class DetailsCharacterPage extends StatefulWidget {
  final Character character;

  const DetailsCharacterPage({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  State<DetailsCharacterPage> createState() => _DetailsCharacterPageState();
}

class _DetailsCharacterPageState extends State<DetailsCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.background,
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: CustomColors.logo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ComicsListPage(character: widget.character),
                ),
              );
            },
            label: Row(
              children: const [
                Icon(
                  Marvel.xmen,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Comics',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Marvel Font',
                  ),
                )
              ],
            )),
        appBar: AppBar(
          title: const LogoAppBar(title: 'Character Details'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                child: Column(children: [
                  const DetailsCharacterHeader(),
                  DetailsCharactersImage(imgUrl: widget.character.imgUrl),
                  DetailsRow(
                    title: 'Name:',
                    subtitle: widget.character.name,
                  ),
                  DetailsRow(
                    title: 'Description:',
                    subtitle: widget.character.description,
                  ),
                  DetailsRow(
                    title: 'The Last Apparition:',
                    subtitle: _creationDate(
                      DateTime.parse(
                        widget.character.modified,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ]),
        ));
  }

  String _creationDate(DateTime dateTime) {
    return '${dateTime.month.toString()}/${dateTime.day.toString()}/${dateTime.year.toString()}';
  }
}
