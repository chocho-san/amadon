import 'package:amadon/model/entities/item/item.dart';
import 'package:amadon/model/entities/items/items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_state.freezed.dart';

@freezed
abstract class ItemsState implements _$ItemsState {
  factory ItemsState({
    @Default(<Item>[]) List<Item> items,

    @Default('') String keyWord,
  }) = _ItemsState;

  ItemsState._();
}