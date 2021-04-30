import 'package:amadon/pages/cart_page/quantity_change.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  const CartTile({Key? key, this.index}) : super(key: key);

  final int? index;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                height: 120,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(5)),
                ),
              ),
              const SizedBox(width: 15),
              Flexible(

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
                    SizedBox(height: 20,),
                    Text(
                      '¥ 3,999',
                      style: Theme.of(context).accentTextTheme.headline5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              QuantityChange(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 side: const BorderSide(
                     color: Colors.grey
                 ),
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text('削除'),
              ),
            ],
          ),
          const Divider(
          ),
        ],
      ),
    );
  }
}
