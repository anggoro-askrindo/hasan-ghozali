import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class ScaffoldAtom extends StatelessWidget {
  final String? title;
  final bool showLeading;
  final List<Widget>? actions;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;

  const ScaffoldAtom({
    super.key,
    this.title,
    this.showLeading = true,
    this.actions,
    required this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAtom.white,
      appBar: title == null
          ? null
          : AppBar(
              title: Text(
                title ?? '',
                style: TextStyleAtom.semiBold16,
              ),
              scrolledUnderElevation: 0,
              backgroundColor: ColorAtom.white,
              actions: [...?actions, const SizedBox(width: 12)],
              centerTitle: false,
              automaticallyImplyLeading: true,
              leading: showLeading
                  ? ButtonAtom.icon(
                      icon: IconConst.icArrowLeft,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  : null,
            ),
      body: title == null ? SafeArea(bottom: false, child: body) : body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
