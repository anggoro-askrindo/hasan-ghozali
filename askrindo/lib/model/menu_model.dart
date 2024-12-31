import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/const/image_const.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/page/bahari_detail_page.dart';
import 'package:askrindo/view/page/home_page.dart';
import 'package:askrindo/view/page/rumahku_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuModel {
  final String? code;
  final String? icon;
  final String? iconActive;
  final String label;
  final Color? color;
  final Widget? child;
  final Function()? onTap;

  MenuModel({
    this.code,
    this.icon,
    this.iconActive,
    required this.label,
    this.color,
    this.child,
    this.onTap,
  });
}

List<MenuModel> listMenu(BuildContext context) {
  final s = S.of(context);
  return [
    MenuModel(
      label: s.home,
      icon: IconConst.icHome,
      iconActive: IconConst.icHome,
      child: const HomePage(),
    ),
    MenuModel(
      label: s.polis,
      icon: IconConst.icPolis,
      iconActive: IconConst.icPolis,
    ),
    MenuModel(
      label: s.klaim,
      icon: IconConst.icKlaim,
      iconActive: IconConst.icKlaim,
    ),
    MenuModel(
      label: s.poin,
      icon: IconConst.icPoin,
      iconActive: IconConst.icPoin,
    ),
    MenuModel(
      label: s.account,
      icon: IconConst.icAccount,
      iconActive: IconConst.icAccount,
    ),
  ];
}

List<MenuModel> listInsuranceMenu(BuildContext context) {
  final s = S.of(context);
  return [
    MenuModel(
      label: s.rumahku,
      icon: ImageConst.rumahku,
      child: const RumahkuDetailPage(),
      onTap: () => Get.to(() => const RumahkuDetailPage()),
    ),
    MenuModel(
      label: s.usahku,
      icon: ImageConst.usahaku,
    ),
    MenuModel(
      label: s.bahari,
      icon: ImageConst.bahari,
      onTap: () => Get.to(() => const BahariDetailPage()),
    ),
    MenuModel(
      label: s.other,
      icon: ImageConst.lainnya,
    ),
  ];
}
