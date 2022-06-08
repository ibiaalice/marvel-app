import 'package:marvel_app/domain/entities/comic.dart';
import 'package:mobx/mobx.dart';

part 'comics_details_store.g.dart';

class ComicsDetailsStore = ComicsDetailsBase with _$ComicsDetailsStore;

abstract class ComicsDetailsBase with Store {
  @observable
  Comic? comic;

  

  void onInit(Comic value) {
    comic = value;
  }
}
