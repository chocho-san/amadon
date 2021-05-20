import 'package:amadon/model/api.dart';
import 'package:amadon/model/controllers/items_controller/items_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemsProvider = StateNotifierProvider<ItemsController, ItemsState>(
  (ref) => ItemsController(read: ref.read),
);

class ItemsController extends StateNotifier<ItemsState> {
  ItemsController({required this.read})
      : super(const ItemsState(searchWords: []));

  final Reader read;

  //api取得して、商品表示
  Future<void> searchItems(String keyWord) async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(
      items: await read(itemsFetcher).getItems(keyWord),
      searchWords: (state.searchWords..insert(0, keyWord)).toSet().toList(),
    );
    state = state.copyWith(isLoading: false);
  }

  void deleteWord(String word) {
    state = state.copyWith(
      searchWords: state.searchWords..remove(word),
    );
  }
}
