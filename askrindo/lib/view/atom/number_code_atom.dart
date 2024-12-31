import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class NumberCodeAtom extends StatelessWidget {
  const NumberCodeAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '+62',
            style: TextStyleAtom.regular15,
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down_rounded),
          const SizedBox(width: 10),
          Container(
            width: 1,
            height: 24,
            color: ColorAtom.black,
          ),
        ],
      ),
    );
  }
}
