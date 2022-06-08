// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'HomeBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$pageAtom = Atom(name: 'HomeBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$offSetAtom = Atom(name: 'HomeBase.offSet', context: context);

  @override
  int get offSet {
    _$offSetAtom.reportRead();
    return super.offSet;
  }

  @override
  set offSet(int value) {
    _$offSetAtom.reportWrite(value, super.offSet, () {
      super.offSet = value;
    });
  }

  late final _$charactersAtom =
      Atom(name: 'HomeBase.characters', context: context);

  @override
  List<Character> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(List<Character> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
page: ${page},
offSet: ${offSet},
characters: ${characters}
    ''';
  }
}
