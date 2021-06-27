import 'package:amadon/model/model.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/items_page/tile/item_tile.dart';
import 'package:amadon/widgets/common_app_bar.dart';
import 'package:amadon/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemsListPage extends HookWidget {
  const ItemsListPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      // settings: RouteSettings(name: pageName[PageType.items]),
      builder: (context) => const ItemsListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(ModalRoute.of(context)!.settings.name);
    final isLoading = useProvider(itemsProvider.select((s) => s.isLoading));
    final itemsState = useProvider(itemsProvider);
    return Scaffold(
      appBar: const CommonAppBar(),
      body: isLoading
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
            ),
    );
  }
}
