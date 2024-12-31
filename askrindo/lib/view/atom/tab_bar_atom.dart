import 'package:askrindo/model/menu_model.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class TabBarAtom {
  TabBarAtom._();

  static Widget regular({
    final TabController? controller,
    required final List<MenuModel> tabs,
    final EdgeInsetsGeometry? margin,
  }) {
    return Container(
      margin: margin,
      decoration: const ShapeDecoration(
        color: ColorAtom.frenchWinery,
        shape: StadiumBorder(),
      ),
      child: TabBar(
        controller: controller,
        labelColor: ColorAtom.white,
        labelStyle: TextStyleAtom.bold14,
        unselectedLabelColor: ColorAtom.darkGrey,
        unselectedLabelStyle: TextStyleAtom.regular14,
        dividerHeight: 0,
        indicatorWeight: 0,
        padding: const EdgeInsets.all(6),
        labelPadding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: const ShapeDecoration(
          color: ColorAtom.accent,
          shape: StadiumBorder(),
        ),
        splashBorderRadius: BorderRadius.circular(40),
        tabs: List.generate(tabs.length, (index) {
          var item = tabs[index];
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Text(item.label),
          );
        }),
      ),
    );
  }
}
