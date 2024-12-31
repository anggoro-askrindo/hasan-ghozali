import 'package:flutter/material.dart';
import 'package:askrindo/view/atom/color_atom.dart';

class TextStyleAtom {
  TextStyleAtom._();

  static const _defaultColor = ColorAtom.text;
  static const _defaultFont = 'nunito';

  //Regular
  static const _regular = TextStyle(
    fontFamily: _defaultFont,
    fontWeight: FontWeight.w400,
    color: _defaultColor,
    letterSpacing: 0.25,
  );

  static final regular10 = _regular.copyWith(fontSize: 10);
  static final regular10White = regular10.copyWith(color: ColorAtom.white);

  static final regular12 = _regular.copyWith(fontSize: 12);
  static final regular12Red = regular12.copyWith(color: ColorAtom.red);
  static final regular12BodyText = regular12.copyWith(color: ColorAtom.bodyText);

  static final regular13 = _regular.copyWith(fontSize: 13);
  static final regular13Accent = regular13.copyWith(color: ColorAtom.accent);

  static final regular14 = _regular.copyWith(fontSize: 14);

  static final regular15 = _regular.copyWith(fontSize: 15);
  static final regular15DarkGrey = regular15.copyWith(color: ColorAtom.darkGrey);

  static final regular16 = _regular.copyWith(fontSize: 16);
  static final regular16Primary = regular16.copyWith(color: ColorAtom.primary);

  //Semi Bold
  static const _semiBold = TextStyle(
    fontFamily: _defaultFont,
    fontWeight: FontWeight.w600,
    color: _defaultColor,
    letterSpacing: 0.25,
  );

  static final semiBold12 = _semiBold.copyWith(fontSize: 12);
  static final semiBold12BodyText = semiBold12.copyWith(color: ColorAtom.bodyText);

  static final semiBold13 = _semiBold.copyWith(fontSize: 13);

  static final semiBold15 = _semiBold.copyWith(fontSize: 15);

  static final semiBold16 = _semiBold.copyWith(fontSize: 16);

  //Bold
  static const _bold = TextStyle(
    fontFamily: _defaultFont,
    fontWeight: FontWeight.w700,
    color: _defaultColor,
    letterSpacing: 0.25,
  );

  static final bold12 = _bold.copyWith(fontSize: 12);

  static final bold13 = _bold.copyWith(fontSize: 13);
  static final bold13White = bold13.copyWith(color: ColorAtom.white);

  static final bold14 = _bold.copyWith(fontSize: 14);
  static final bold14Primary = _bold.copyWith(color: ColorAtom.primary);

  static final bold15 = _bold.copyWith(fontSize: 15);
  static final bold15Primary = bold15.copyWith(color: ColorAtom.primary);

  static final bold21 = _bold.copyWith(fontSize: 21);
  static final bold21Primary = bold21.copyWith(color: ColorAtom.primary);

  static final bold16 = _bold.copyWith(fontSize: 16);
  static final bold16Primary = bold16.copyWith(color: ColorAtom.primary);

  static final bold18 = _bold.copyWith(fontSize: 18);
  static final bold18Primary = bold18.copyWith(color: ColorAtom.primary);
  
}
