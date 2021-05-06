import 'package:amadon/model/entities/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_state.freezed.dart';

@freezed
abstract class ItemsState implements _$ItemsState {
  factory ItemsState({
    @Default(<Item>[]) List<Item> items,
    @Default('') String keyWord,
    @Default(<String>[]) List<String> searchWords,
    @Default(false) bool isLoading,

  }) = _ItemsState;

  ItemsState._();
}