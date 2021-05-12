import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchProvider =
    StateNotifierProvider<SearchController, TextEditingController>(
        (_) => SearchController());

class SearchController extends StateNotifier<TextEditingController> {
  SearchController() : super(TextEditingController());

  void addWord(String word) {
    state
      ..text = word
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: state.text.length),
      );
  }
}
