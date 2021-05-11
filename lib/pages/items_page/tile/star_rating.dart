import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating(this.rating, this.count);

  final double rating;
  final int count;

  Widget buildStar(BuildContext context, int index) {
    IconData iconData;
    const color = BuildTheme.starColor;
    if (index >= rating) {
      iconData = Icons.star_border;
    } else if (index > rating - 1 && index < rating) {
      iconData = Icons.star_half;
    } else {
      iconData = Icons.star;
    }
    return Icon(
      iconData,
      color: color,
      size: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        5,
        (index) => buildStar(context, index),
      )..add(
          Text(' $count', style: Theme.of(context).textTheme.caption),
        ),
    );
  }
}
