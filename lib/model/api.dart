import 'dart:convert';

import 'package:amadon/model/entities/item/item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import 'entities/item/item.dart';

final itemsFetcher = Provider((ref) => ItemApi());

class ItemApi {
  final _client = Client();

  static const String apiKey = '1060774995987489267';

  static const String requestUrl =
      'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706?format=json&applicationId=$apiKey&keyword=';

  //楽天商品検索api
  Future<List<Item>> getItems(String keyword) async {

    // def aaa = Map<String, dynamic>;

    final response = await _client.get(
      Uri.parse('$requestUrl${'${Uri.encodeComponent(keyword)}'}'),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;

      final list = <Map<String, dynamic>>[];

      for (final mapItem in json['Items']) {
        final itemMap = mapItem['Item'] as Map<String, dynamic>;
        list.add(itemMap);
      }

      final castList = list.cast<Map<String, dynamic>>();
      final newList = castList.map((e) => Item.fromJson(e)).toList();

      return newList;

    } else {
      throw Exception('取得失敗');
    }



  }
}

//APIの形式
//
// {
//  "Items": [
//   {
//    "Item": {
//       "mediumImageUrls": [
//            {"imageUrl": "URL1"},
//            {"imageUrl": "URL2"},
//            {"imageUrl": "URL3"},
//         ],
// 　　　　"itemName": "商品名",
// 　　　　"itemPrice": 2500,
