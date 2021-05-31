import 'package:amadon/app_title.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DrawerHeaderTile extends StatelessWidget {
  const DrawerHeaderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title =useProvider(titleProvider);
    return Container(
      height: 180,
      width: double.infinity,
      color: const Color.fromRGBO(148, 224, 216, 1),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  <Widget>[
                Text(
                'こんにちは!',
                overflow: TextOverflow.ellipsis, //テキストが多い場合は省略記号。
                maxLines: 2,
                style: Theme.of(context).textTheme.headline6,
              ),
                Text(
                '$title へようこそ',
                  style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
