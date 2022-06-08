import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/domain/services/comics_service.dart';

class GetComics {
  final ComicsService _comicsService = ComicsService();

  Future<List<Comic>> byCharacterId(String characterId) async {
    List<Comic> comics = [];

    final result = await _comicsService.getComicsByCharacterId(characterId);
    List comicsData = result['results'];

    for (final Map comicData in comicsData) {
      Comic comic = Comic.fromMap(comicData);
      if (comic.imgUrl.contains('image_not_available')) continue;
      comics.add(comic);
    }

    return comics;
  }
}
