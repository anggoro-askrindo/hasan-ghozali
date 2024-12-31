import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class StepAtom extends StatefulWidget {
  final int currentStep;
  const StepAtom({
    super.key,
    required this.currentStep,
  });

  @override
  State<StepAtom> createState() => _StepAtomState();
}

class _StepAtomState extends State<StepAtom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _item(1),
        _spacer(1),
        _item(2),
        _spacer(2),
        _item(3),
        _spacer(3),
        _item(4),
      ],
    );
  }

  Widget _spacer(int step) {
    final prev = step < widget.currentStep;
    return Expanded(
      child: Divider(color: prev ? ColorAtom.lightGrey : ColorAtom.macaroonCream),
    );
  }

  Widget _item(int step) {
    final active = step == widget.currentStep;
    final prev = step < widget.currentStep;
    return Container(
      width: 28,
      height: 28,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: prev
            ? ColorAtom.lightGrey
            : active
                ? ColorAtom.primary
                : ColorAtom.macaroonCream,
        shape: BoxShape.circle,
      ),
      child: prev
          ? const Icon(
              Icons.check,
              color: ColorAtom.primary,
              size: 16,
            )
          : Text(
              step.toString(),
              style: active ? TextStyleAtom.bold13White : TextStyleAtom.regular13Accent,
            ),
    );
  }
}
