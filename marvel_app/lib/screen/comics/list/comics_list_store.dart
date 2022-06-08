import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/comic.dart';
import 'package:marvel_app/domain/services/comics_service.dart';
import 'package:marvel_app/domain/usecases/comics/get_comics.dart';
import 'package:mobx/mobx.dart';

part 'comics_list_store.g.dart';

class ComicsListStore = ComicsListBase with _$ComicsListStore;

abstract class ComicsListBase with Store {
  final GetComics _getComics = GetComics();
  @observable
  Character? character;

  @observable
  List<Comic> comics = [];

  @observable
  bool isLoading = false;

  void onInit(Character value) async {
    character = value;
    await getComics();
    print(comics.length);
  }

  Future<void> getComics() async {
    isLoading = true;
    if (character != null) {
      comics = await _getComics.byCharacterId(character!.id.toString());
    }
    isLoading = false;
  }
}
