import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';

class QuantityChangeButton extends StatelessWidget {
  const QuantityChangeButton({
    Key? key,
    required this.isPlus,
    required this.radius,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final bool isPlus;
  final double radius;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        right: isPlus ? Radius.circular(radius) : Radius.zero,
        left: isPlus ? Radius.zero : Radius.circular(radius),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
              left: isPlus
                  ? const BorderSide(color: BuildTheme.borderColor)
                  : BorderSide.none,
              right: isPlus
                  ? BorderSide.none
                  : const BorderSide(color: BuildTheme.borderColor),
            ),
            gradient: BuildTheme.quantityButtonGradient),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          icon: Icon(icon),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
