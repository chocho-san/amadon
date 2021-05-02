import 'package:amadon/model/controllers/items_controller/items_controller.dart';
import 'package:amadon/model/entities/item/item.dart';
import 'package:amadon/pages/items_page/item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemTile extends HookWidget {
  const ItemTile({Key? key, required this.item}) : super(key: key);

  final Item item;

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
            ItemImage(imageUrl: item.imageUrl,),
            const SizedBox(width: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.itemName,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      item.price,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    ElevatedButton(
                      // style: ButtonStyle(),
                      onPressed: () {},
                      child: const Text('カートに入れる'),
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
