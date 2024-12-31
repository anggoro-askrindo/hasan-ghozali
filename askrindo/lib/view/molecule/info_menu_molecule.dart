import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoMenuMolecule extends StatelessWidget {
  final Color color;
  final String label;
  final String icon;
  const InfoMenuMolecule({
    super.key,
    required this.color,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints(minHeight: 81),
        padding: const EdgeInsets.only(left: 16, right: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyleAtom.bold14Primary,
              ),
            ),
            SvgPicture.asset(
              icon,
              width: 40,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
