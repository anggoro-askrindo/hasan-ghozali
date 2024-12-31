import 'package:askrindo/model/menu_model.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsuranceMenuMolecule extends StatelessWidget {
  final MenuModel? data;
  const InsuranceMenuMolecule({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: data?.onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              data?.icon ?? '',
              width: 72,
              height: 72,
            ),
            const SizedBox(height: 10),
            Text(
              data?.label ?? '',
              style: TextStyleAtom.regular12,
            ),
          ],
        ),
      ),
    );
  }
}
