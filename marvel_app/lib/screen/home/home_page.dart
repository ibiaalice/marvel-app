import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';
import 'package:marvel_app/screen/home/home_store.dart';
import 'package:marvel_app/screen/home/widgets/characters_list.dart';
import 'package:marvel_app/screen/home/widgets/home_title.dart';
import 'package:marvel_app/screen/home/widgets/page_counter.dart';
import 'package:marvel_app/screen/search/search_page.dart';
import 'package:marvel_app/screen/widgets/copyright_alert_dialog.dart';
import 'package:marvel_app/screen/widgets/license_footer.dart';
import 'package:marvel_app/screen/widgets/loading_card.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = HomeStore();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: AppBar(
        title: const LogoAppBar(title: 'Characters'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.logo,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const CopyrightAlertDialog();
              });
        },
        child: const Icon(Marvel.spiderman),
      ),
      body: Observer(
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeTitle(),
            if (store.characters.isEmpty & store.isLoading)
              const LoadingCard()
            else
              SingleChildScrollView(
                controller: _scrollController,
                reverse: false,
                scrollDirection: Axis.horizontal,
                child: CharactersList(
                  characters: store.characters,
                  isLoading: store.isLoading,
                ),
              ),
            PageCounter(value: store.page.toString()),
            const LicenseFooter(),
          ],
        ),
      ),
    );
  }

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        store.loadCharacters();
      });
    }
  }
}
