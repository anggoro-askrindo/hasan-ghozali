import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/dialog_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/page/rumahku_buy4_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

submitOrderDialog(BuildContext context) {
  final s = S.of(context);

  dialogAtom(
    context: context,
    children: [
      SvgPicture.asset(
        IconConst.icInfoCircle,
        width: 80,
        height: 80,
      ),
      const SizedBox(height: 24),
      Text(
        s.order_confirm,
        style: TextStyleAtom.bold16Primary,
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 8),
      Text(
        s.order_confirm_desc,
        style: TextStyleAtom.regular15,
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 36),
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
              label: s.sure,
              onTap: () {
                Get.back();
                Get.to(() => const RumahkuBuy4Page());
              },
            ),
          ),
        ],
      ),
    ],
  );
}
