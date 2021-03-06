import 'package:amadon/model/model.dart';
import 'package:amadon/pages/items_page/tile/item_tile.dart';
import 'package:amadon/pages/app_bar/common_app_bar.dart';
import 'package:amadon/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemsListPage extends ConsumerWidget {
  const ItemsListPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const ItemsListPage(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      itemsProvider.select((s) => s.isLoading),
    );
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
                    children: const [
                      SizedBox(
                        child: Text(
                          '結果',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      _ItemsListView(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

class _ItemsListView extends ConsumerWidget {
  const _ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(
      itemsProvider.select((s) => s.items),
    );
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (_, index) {
        return ProviderScope(
          overrides: [
            currentItem.overrideWithValue(items[index]),
          ],
          child: const ItemTile(),
        );
      },
    );
  }
}
