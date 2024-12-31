import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/dialog_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/page/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

statementDialog(BuildContext context) {
  dialogAtom(
    context: context,
    children: [const _Content()],
  );
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => __ContentState();
}

class __ContentState extends State<_Content> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Flexible(
      child: Column(
        children: [
          Text(
            s.statement.toUpperCase(),
            style: TextStyleAtom.bold16Primary,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _horizontalField(1, s.statement1),
                  _horizontalField(2, s.statement2),
                  _horizontalField(3, s.statement3),
                  _horizontalField(4, s.statement4),
                  _horizontalField(5, s.statement5),
                  _horizontalField(6, s.statement6),
                  _horizontalField(7, s.statement7),
                  _horizontalField(8, s.statement8),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        checkColor: ColorAtom.white,
                        activeColor: ColorAtom.accent,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: ColorAtom.darkGrey),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        value: _check,
                        onChanged: (value) {
                          _check = value!;
                          setState(() {});
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            s.statement_check,
                            style: TextStyleAtom.regular14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ButtonAtom.secondary(
                  width: double.infinity,
                  label: s.cancel,
                  onTap: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ButtonAtom.primary(
                  width: double.infinity,
                  label: s.next,
                  onTap: _check ? () => Get.to(() => const SuccessPage()) : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _horizontalField(int number, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${number.toString()}. ',
          style: TextStyleAtom.regular15,
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyleAtom.regular15,
          ),
        ),
      ],
    );
  }
}
