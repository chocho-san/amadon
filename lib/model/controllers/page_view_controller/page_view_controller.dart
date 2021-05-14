import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pageProvider = StateNotifierProvider<PageViewController, PageController>(
    (_) => PageViewController());

class PageViewController extends StateNotifier<PageController> {
  PageViewController() : super(PageController());

  void pageTrip(BuildContext context, int index) {
    if (index != 3) {
      //Appすべてのフォーカス外す
      //このアプリでは検索フィールドのみ
      FocusScope.of(context).unfocus();
    }
    state.jumpToPage(index);
  }
}
