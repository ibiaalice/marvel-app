import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/domain/usecases/comics/get_comics.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  final GetComics getComics = GetComics();

  test('get Comics ', () async {
    List<Comic> comics = [];

    expect(comics.isEmpty, equals(true));

    comics = await getComics.byCharacterId('1009351');

    expect(comics.isEmpty, equals(false));
    expect(comics.isNotEmpty, equals(true));

    comics = await getComics.byCharacterId('40028922');
    expect(comics.isEmpty, equals(true));
  });
}
