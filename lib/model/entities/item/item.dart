//出力パラメータ

// "mediumImageUrls": [
// {
// "imageUrl": "https://thumbnail.image.rakuten.co.jp/@0_mall/cube/cabinet/allitems27/140320-c-03-nn0.jpg?_ex=128x128"
// },
//
// ]
//
// "itemName":'アイテム',
// "itemPrice": 1100,

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

part 'item.g.dart';

@freezed
 class Item with _$Item {
  factory Item({
    required String itemName,
    required int itemPrice,
    required Map<String, String> mediumImageUrls,
  }) = _Item;

  Item._();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

// class Item {
//   String? itemName;
//   int? itemPrice;
//   List<Map<String, String>>? mediumImageUrls;
//
//   Item({
//     this.itemName,
//     this.itemPrice,
//     this.mediumImageUrls,
//   });
// }



// mediumImageUrls: json['mediumImageUrls'] as List<Map<String, String>>,
