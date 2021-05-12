import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating(this.rating, this.count);

  final double rating;
  final String count;

  Widget _buildStar(BuildContext context, int index) {
    IconData iconData;
    const color = BuildTheme.starColor;
    if (rating >= index + 0.75) {
      iconData = Icons.star;
    } else if (rating > index + 0.25) {
      iconData = Icons.star_half;
    } else {
      iconData = Icons.star_border;
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
      children: List.generate(5, (i) => _buildStar(context, i))
        ..add(
          Text(count, style: Theme.of(context).textTheme.caption),
        ),
    );
  }
}
