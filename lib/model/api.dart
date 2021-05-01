import 'dart:convert';

import 'package:amadon/api_key.dart';
import 'package:amadon/model/entities/item/item.dart';
import 'package:amadon/model/entities/items/items.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'dart:convert';

final itemsFetcher = Provider((ref) => ItemApi());

class ItemApi {
  final _client = Client();

  static const String requestUrl =
      'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706?format=json&applicationId=$apiKey&keyword=';

  // typedef JsonMap = Map<String, dynamic>;

  Future<void> getItems(/*String keyword*/) async {
    final Response response = await _client.get(
      Uri.parse(requestUrl + '%E3%83%9F%E3%82%AD%E3%82%B5%E3%83%BC'),
    );

    final  json = (jsonDecode(response.body) as Map).cast<String, dynamic>();

    final list = (json['Items'] as List).cast<List<Map<String, dynamic>>>();

    final newList = (list
        .map((i) => (i as Map).cast<String,dynamic>()['Item'])
        .toList()).cast<Map<String, dynamic>>();
    //
    // print(newList);


  //  map.cast<String, dynamic>()

  }
}
