import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'item.freezed.dart';

part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    required String itemName,
    required int itemPrice,
    required List<Map<String, String>> mediumImageUrls,
    required int reviewCount,
    required double reviewAverage,
  }) = _Item;

  Item._();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  late final String imageUrl = '${mediumImageUrls[0]['imageUrl']}';
  late final String price = '¥${NumberFormat('#,###').format(itemPrice)}';
  late final String totalReview =
      ' ${NumberFormat('#,###').format(reviewCount)}';
}
