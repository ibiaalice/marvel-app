import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/usecases/characters/get_characters.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeBase with _$HomeStore;

abstract class HomeBase with Store {
  final GetCharacters _getCharacters = GetCharacters();

  @observable
  bool isLoading = false;

  @observable
  int page = 1;

  @observable
  int offSet = 0;

  @observable
  List<Character> characters = [];

  Future<void> onInit() async {
    await _loadCharacters();
  }



  Future<void> loadCharacters() async {
    nextOffSet();
    await _loadCharacters();
    page += 1;
  }


  Future<void> _loadCharacters() async {
    isLoading = true;
    final newCharacters = await _getCharacters.byOffSet(offSet);

    characters += newCharacters;
    isLoading = false;
  }


  void nextOffSet() {
    offSet = offSet + 100;
  }
}
