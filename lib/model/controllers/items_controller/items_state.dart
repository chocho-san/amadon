import 'package:amadon/model/entities/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_state.freezed.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    @Default(<Item>[]) List<Item> items,
    @Default('') String keyWord,
    @Default(<String>[]) List<String> searchWords,
    @Default(false) bool isLoading,
  }) = _ItemsState;
}
