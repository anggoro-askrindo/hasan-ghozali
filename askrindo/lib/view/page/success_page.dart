import 'package:askrindo/const/image_const.dart';
import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/policy_model.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      RumahkuController c = Get.find();
      c.policy.value = PolicyModel();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ScaffoldAtom(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                ImageConst.success,
                width: 250,
              ),
              const SizedBox(height: 32),
              Text(
                s.success_title,
                style: TextStyleAtom.bold18,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                s.success_desc,
                style: TextStyleAtom.regular15,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ButtonAtom.secondary(
                width: 246,
                label: s.close,
                onTap: () => Get.offAll(const MainPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
