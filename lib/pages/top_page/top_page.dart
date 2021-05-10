import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TopPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset('assets/svgs/shopping.svg'),
    );
  }
}