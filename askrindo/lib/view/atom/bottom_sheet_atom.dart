import 'package:askrindo/view/atom/color_atom.dart';
import 'package:flutter/material.dart';

bottomSheetAtom({
  required final BuildContext context,
  final bool isDismissible = true,
  final bool isBack = true,
  final Function()? whenDismiss,
  final CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  final EdgeInsets padding = const EdgeInsets.all(20),
  required final List<Widget> children,
}) {
  double maxHeight = MediaQuery.of(context).size.height * 0.925;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: isDismissible,
    isDismissible: isDismissible,
    backgroundColor: ColorAtom.transparent,
    builder: (context) => Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      constraints: BoxConstraints(maxHeight: maxHeight),
      color: ColorAtom.transparent,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorAtom.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: crossAxisAlignment,
              children: [...children],
            ),
          ),
        ),
      ),
    ),
  ).whenComplete(() => whenDismiss?.call());
}
