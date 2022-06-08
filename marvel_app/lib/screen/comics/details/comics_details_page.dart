import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/screen/comics/details/comics_details_store.dart';
import 'package:marvel_app/screen/comics/details/widgets/comic_detail_card.dart';
import 'package:marvel_app/screen/widgets/logo_app_bar.dart';
import 'package:marvel_app/screen/widgets/title_body.dart';

class ComicsDetailsPage extends StatefulWidget {
  final Comic comic;
  const ComicsDetailsPage({
    Key? key,
    required this.comic,
  }) : super(key: key);

  @override
  State<ComicsDetailsPage> createState() => _ComicsDetailsPageState();
}

class _ComicsDetailsPageState extends State<ComicsDetailsPage> {
  final store = ComicsDetailsStore();

  @override
  void initState() {
    store.onInit(widget.comic);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: AppBar(title: const LogoAppBar(title: 'Details Comic')),
      body: Observer(builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                const TitleBody(title: 'Comics Details'),
                ComicDetailCard(comic: widget.comic)
              ],
            ),
          ),
        );
      }),
    );
  }
}
