import 'package:askrindo/model/menu_model.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldAtom(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: ColorAtom.lighterGrey, width: 1)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorAtom.white,
          elevation: 0,
          iconSize: 24,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyleAtom.bold12,
          unselectedLabelStyle: TextStyleAtom.regular12,
          selectedItemColor: ColorAtom.primary,
          unselectedItemColor: ColorAtom.darkGrey,
          items: listMenu(context)
              .map((e) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(e.icon ?? ''),
                    activeIcon: SvgPicture.asset(e.iconActive ?? ''),
                    label: e.label,
                  ))
              .toList(),
          currentIndex: _index,
          onTap: (value) {
            _index = value;
            setState(() {});
          },
        ),
      ),
      body: listMenu(context).elementAt(_index).child ?? const SizedBox(),
    );
  }
}
