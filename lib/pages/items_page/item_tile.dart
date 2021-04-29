import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 180,
        child: Row(
          children: [
            //   Image.network(
            //   imageUrl,
            //   fit: BoxFit.cover,
            // ),
            Container(
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.horizontal(left: Radius.circular(5)),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'adsalkjgdsah;lasgdh;lasfdhsfadjk',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      '¥ 3,999',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text('カートに入れる'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
