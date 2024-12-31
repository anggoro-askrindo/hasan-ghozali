import 'package:flutter/material.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';

class ExpansionAtom extends StatelessWidget {
  final bool? initiallyExpanded;
  final String? title;
  final Widget? titleWidget;
  final String? desc;
  final Widget? descWidget;
  final EdgeInsets? margin;

  const ExpansionAtom({
    super.key,
    this.initiallyExpanded,
    this.title,
    this.titleWidget,
    this.desc,
    this.descWidget,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded ?? false,
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(bottom: 8),
        backgroundColor: ColorAtom.transparent,
        collapsedBackgroundColor: ColorAtom.transparent,
        iconColor: ColorAtom.black,
        shape: const Border(),
        title: titleWidget ??
            Text(
              title ?? '',
              style: TextStyleAtom.bold16,
            ),
        children: [
          descWidget ??
              Text(
                desc ?? '',
                style: TextStyleAtom.regular15,
              ),
        ],
      ),
    );
  }
}
