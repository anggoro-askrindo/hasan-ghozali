import 'package:askrindo/view/atom/color_atom.dart';
import 'package:flutter/material.dart';

dialogAtom({
  required final BuildContext context,
  final bool isDismissible = true,
  final Function()? whenDismiss,
  final CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  final EdgeInsets padding = const EdgeInsets.all(20),
  required final List<Widget> children,
}) {
  showDialog(
    context: context,
    barrierDismissible: isDismissible,
    builder: (context) => Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: ColorAtom.transparent,
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 500),
        decoration: BoxDecoration(
          color: ColorAtom.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: crossAxisAlignment,
            children: children,
          ),
        ),
      ),
    ),
  ).whenComplete(() => whenDismiss?.call());
}
