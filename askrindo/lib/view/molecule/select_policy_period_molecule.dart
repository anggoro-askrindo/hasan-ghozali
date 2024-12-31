import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class SelectPolicyPeriodMolecule extends StatelessWidget {
  final String price;
  const SelectPolicyPeriodMolecule({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          s.select_policy_period,
          style: TextStyleAtom.bold16,
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          decoration: BoxDecoration(
            color: ColorAtom.secondary,
            border: Border.all(color: ColorAtom.primary),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                s.one_year,
                style: TextStyleAtom.regular14,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  price,
                  style: TextStyleAtom.bold14,
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.check_circle,
                color: ColorAtom.primary,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
