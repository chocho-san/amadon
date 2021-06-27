import 'package:amadon/pages/items_page/tile/item_tile.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarRating extends ConsumerWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final average = ref.watch(currentItem).reviewAverage;
    final totalReview = ref.watch(currentItem).totalReview;

    final starList = List.generate(5, (i) {
      IconData iconData;
      const color = BuildTheme.starColor;
      if (average >= i + 0.75) {
        iconData = Icons.star;
      } else if (average > i + 0.25) {
        iconData = Icons.star_half;
      } else {
        iconData = Icons.star_border;
      }
      return Icon(
        iconData,
        color: color,
        size: 20,
      );
    });
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ...starList,
        Text(
          totalReview,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
