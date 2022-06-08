import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/domain/core/marvel_icons.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/screen/comics/details/widgets/comic_detail_image.dart';
import 'package:marvel_app/screen/widgets/details_row.dart';

class ComicDetailCard extends StatelessWidget {
  final Comic comic;

  const ComicDetailCard({
    Key? key,
    required this.comic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            color: CustomColors.logo,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Marvel.spiderman,
                  size: 80,
                  color: Colors.white,
                  shadows: [Shadow(blurRadius: 4)],
                ),
                SizedBox(width: 4),
                Text(
                  'Spide\'s Catalog ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Indie',
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
          ComicDetailsImage(imgUrl: comic.imgUrl),
          DetailsRow(title: 'Title:', subtitle: comic.title),
          DetailsRow(
            title: 'Description:',
            subtitle: comic.description,
          ),
          DetailsRow(
            title: 'Last Publication:',
            subtitle: comic.title,
          ),
          DetailsRow(
            title: 'Diamond\'s code',
            subtitle: comic.diamondCode,
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
