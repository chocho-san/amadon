// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    itemName: json['itemName'] as String,
    itemPrice: json['itemPrice'] as int,
    mediumImageUrls: (json['mediumImageUrls'] as List<dynamic>)
        .map((e) => Map<String, String>.from(e as Map))
        .toList(),
    reviewCount: json['reviewCount'] as int,
    reviewAverage: (json['reviewAverage'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'itemName': instance.itemName,
      'itemPrice': instance.itemPrice,
      'mediumImageUrls': instance.mediumImageUrls,
      'reviewCount': instance.reviewCount,
      'reviewAverage': instance.reviewAverage,
    };
