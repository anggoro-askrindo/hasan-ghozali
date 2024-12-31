import 'package:askrindo/view/atom/color_atom.dart';
import 'package:flutter/material.dart';

class ContainerInfoAtom extends StatelessWidget {
  final Widget? child;
  const ContainerInfoAtom({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorAtom.secondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
