import 'package:amadon/model/model.dart';
import 'package:amadon/pages/items_page/tile/item_tile.dart';
import 'package:amadon/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class ItemsList extends HookWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useProvider(itemsProvider.select((s) => s.isLoading));
    final itemsState = useProvider(itemsProvider);
    return isLoading
        ? LoadingIndicator()
        : Scrollbar(
            isAlwaysShown: false,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text(
                        '結果',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: itemsState.items.length,
                        itemBuilder: (_, index) {
                          return ProviderScope(
                            overrides: [
                              currentItem
                                  .overrideWithValue(itemsState.items[index]),
                            ],
                            child: const ItemTile(),
                          );
                        }),
                  ],
                ),
              ),
            ),
          );
  }
}
