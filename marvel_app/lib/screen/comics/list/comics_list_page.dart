import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/screen/comics/details/comics_details_page.dart';
import 'package:marvel_app/screen/comics/list/comics_list_store.dart';
import 'package:marvel_app/screen/comics/list/widgets/comics_list_empty.dart';
import 'package:marvel_app/screen/widgets/loading_card.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';
import 'package:marvel_app/screen/widgets/title_body.dart';

class ComicsListPage extends StatefulWidget {
  final Character character;
  const ComicsListPage({Key? key, required this.character}) : super(key: key);

  @override
  State<ComicsListPage> createState() => _ComicsListPageState();
}

class _ComicsListPageState extends State<ComicsListPage> {
  final store = ComicsListStore();

  @override
  void initState() {
    store.onInit(widget.character);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: AppBar(
        title: const LogoAppBar(title: 'Comics'),
      ),
      body: Observer(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const TitleBody(title: 'Comic book list'),
              if (store.isLoading)
                const Center(child: LoadingCard())
              else if (store.comics.isEmpty)
                const ComicsListEmpty()
              else ...[
                for (final Comic comic in store.comics)
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ComicsDetailsPage(
                            comic: comic,
                          ),
                        ),
                      );
                    }),
                    child: Container(
                      height: 500,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(
                          comic.imgUrl,
                        ),
                      )),
                      child: Column(),
                    ),
                  )
              ],
            ],
          ),
        );
      }),
    );
  }
}
