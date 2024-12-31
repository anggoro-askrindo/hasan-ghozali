import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoAtom {
  InfoAtom._();

  static check(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: SvgPicture.asset(
            IconConst.icCheck,
            width: 16,
            height: 16,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: TextStyleAtom.regular15,
          ),
        ),
      ],
    );
  }

  static bullet({String? title, required String desc}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: SvgPicture.asset(
            IconConst.icDot,
            width: 12,
            height: 12,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: TextStyleAtom.bold15,
                ),
              Text(
                desc,
                style: TextStyleAtom.regular15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
