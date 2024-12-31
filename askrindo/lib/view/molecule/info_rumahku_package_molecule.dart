import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/container_info_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class InfoRumahkuPackageMolecule extends StatelessWidget {
  final String package;
  final String price;
  const InfoRumahkuPackageMolecule({
    super.key,
    required this.package,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ContainerInfoAtom(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            package,
            style: TextStyleAtom.bold16,
          ),
          const SizedBox(height: 4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: s.package_info1,
                  style: TextStyleAtom.regular15,
                ),
                TextSpan(
                  text: s.package_info2(price),
                  style: TextStyleAtom.bold15,
                ),
                TextSpan(
                  text: s.package_info3,
                  style: TextStyleAtom.regular15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
