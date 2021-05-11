import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';

class QuantityChangeButton extends StatelessWidget {
  const QuantityChangeButton({
    required this.isPlus,
    required this.icon,
    required this.onPressed,
  });

  final bool isPlus;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        right: isPlus ? const Radius.circular(5) : Radius.zero,
        left: isPlus ? Radius.zero : const Radius.circular(5),
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
