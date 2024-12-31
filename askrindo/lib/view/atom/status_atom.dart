import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class StatusAtom extends StatelessWidget {
  final bool done;
  const StatusAtom({super.key, this.done = false});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: ShapeDecoration(
        color: done ? ColorAtom.green : ColorAtom.accent,
        shape: const StadiumBorder(),
      ),
      child: Row(
        children: [
          if (done) ...[
            const Icon(
              Icons.check,
              size: 14,
              color: ColorAtom.white,
            ),
            const SizedBox(width: 4),
          ],
          Text(
            done ? s.complete : s.not_complete,
            style: TextStyleAtom.regular10White,
          ),
        ],
      ),
    );
  }
}
