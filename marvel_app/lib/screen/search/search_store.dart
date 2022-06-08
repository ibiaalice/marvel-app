import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/usecases/characters/get_characters.dart';
import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

class SearchStore = SearchBase with _$SearchStore;

abstract class SearchBase with Store {
  final GetCharacters _getCharacters = GetCharacters();

  @observable
  bool isLoading = false;

  @observable
  String search = '';

  @observable
  List<Character> characters = [];

  Future<void> searchCharacters() async {
    isLoading = true;
    characters = await _getCharacters.byName(search);
    isLoading = false;
  }

  void setSearch(String value) {
    if (value.isEmpty || value == '') return;

    search = value;
    searchCharacters();
  }
}
