import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';
import 'package:marvel_app/screen/home/widgets/characters_list.dart';
import 'package:marvel_app/screen/search/search_store.dart';
import 'package:marvel_app/screen/search/widgets/search_text_form_field.dart';
import 'package:marvel_app/screen/widgets/loading_card.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';
import 'package:marvel_app/screen/widgets/title_body.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final store = SearchStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const LogoAppBar(
            title: 'Search Character',
          ),
        ),
        backgroundColor: CustomColors.background,
        body: Observer(builder: (context) {
          return Column(
            children: [
              const TitleBody(title: 'Search'),
              SearchTextFormField(onChanged: (String value) {
                store.setSearch(value);
              }),
              if (store.isLoading)
                const LoadingCard()
              else ...[
                if (!store.isLoading && store.characters.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Search for character name!',
                            style: TextStyle(
                                fontSize: 30, fontFamily: 'Marvel Font'),
                          )
                        ],
                      ),
                    ),
                  ),
                SingleChildScrollView(
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  child: CharactersList(
                    characters: store.characters,
                    isLoading: store.isLoading,
                  ),
                ),
              ]
            ],
          );
        }));
  }
}
