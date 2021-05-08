import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final textProvider =
    StateNotifierProvider<TextController, TextEditingController>(
        (_) => TextController());

class TextController extends StateNotifier<TextEditingController> {
  TextController() : super(TextEditingController());

  void addWord(String word) {
    state.text = word;
    state.selection =
        TextSelection.fromPosition(TextPosition(offset: state.text.length));
  }
}
