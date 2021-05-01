

import 'package:amadon/model/api.dart';
import 'package:amadon/model/controllers/items_controller/items_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemsProvider = StateNotifierProvider<ItemsController, ItemsState>(
      (ref) => ItemsController( read: ref.read ),
);

class ItemsController extends StateNotifier<ItemsState> {
  ItemsController({this.read}) : super(ItemsState());


  final Reader? read;


  void search(String word){
    state=state.copyWith(keyWord:word);
  }

  //api取得
  Future<void> fetch() async {
    state = state.copyWith(
      // items: await read!(itemsFetcher).getItems(),
    );
  }

}