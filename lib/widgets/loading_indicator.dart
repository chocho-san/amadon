import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         LinearProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.orange),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
