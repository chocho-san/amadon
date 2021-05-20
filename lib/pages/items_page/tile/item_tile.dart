import 'package:amadon/model/model.dart';
import 'package:amadon/pages/items_page/tile/item_image.dart';
import 'package:amadon/pages/items_page/tile/star_rating.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//コンストラクタに渡さなくてよく、tileがリビルドされない！
final currentItem = ScopedProvider<Item>(null);

class ItemTile extends HookWidget {
  const ItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = useProvider(currentItem);
    final cartNotifier = useProvider(cartProvider.notifier);
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: BuildTheme.borderColor),
          borderRadius: BorderRadius.circular(BuildTheme.radius),
        ),
        height: 180,
        child: Row(
          children: [
            const ItemImage(),
            const SizedBox(width: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      item.itemName,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    const StarRating(),
                    Text(
                      item.price,
                      style: const TextStyle(
                          color: BuildTheme.priceColor, fontSize: 22),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () => cartNotifier.addToCart(item),
                        child: const Text('カートに入れる'),
                      ),
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
