import 'package:amadon/pages/items_page/tile/item_tile.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemImage extends ConsumerWidget {
  const ItemImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(currentItem);
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        left: Radius.circular(BuildTheme.radius),
      ),
      child: SizedBox(
        width: 130,
        height: 180,
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
