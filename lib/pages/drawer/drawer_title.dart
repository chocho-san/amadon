import 'package:flutter/material.dart';

class DrawerTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      color: Color.fromRGBO(148, 224,216,1),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Text(
                'こんにちは!',
                overflow: TextOverflow.ellipsis, //テキストが多い場合は省略記号。
                maxLines: 2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text(
                'amadon へようこそ',
                style: TextStyle(
fontSize: 20,fontWeight: FontWeight.bold,
                ),
              ),

            ],

      ),
    );
  }
}
