

import 'package:amadon/model/api.dart';
import 'package:amadon/model/controllers/items_controller/items_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemsProvider = StateNotifierProvider<ItemsController, ItemsState>(
      (ref) => ItemsController( read: ref.read ),
);

class ItemsController extends StateNotifier<ItemsState> {
  ItemsController({this.read}) : super(ItemsState());

  final Reader? read;

  // void search(String word){
  //   state=state.copyWith(keyWord:word);
  // }

  //api取得して、商品表示
  Future<void> searchItems(String keyWord) async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(
      items: await read!(itemsFetcher).getItems(keyWord),
      keyWord:keyWord
    );
    state = state.copyWith(isLoading: false);
  }

}