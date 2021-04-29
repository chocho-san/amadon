import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        textInputAction: TextInputAction.search,
        /*Enterを虫眼鏡アイコンに*/

        decoration: const InputDecoration(
          hintText: '何をお探しですか？',
          contentPadding:  EdgeInsets.symmetric(vertical: 5),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
