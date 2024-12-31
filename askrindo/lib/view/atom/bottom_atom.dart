import 'package:askrindo/view/atom/color_atom.dart';
import 'package:flutter/material.dart';

class BottomAtom extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const BottomAtom({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: ColorAtom.lighterGrey, width: 1)),
      ),
      child: SafeArea(
        top: false,
        child: child,
      ),
    );
  }
}
