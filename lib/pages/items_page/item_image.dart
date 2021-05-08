import 'package:flutter/widgets.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(left: Radius.circular(5)),
      child: SizedBox(
        width: 130,
        height: 180,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}