import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/step_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/dialog/submit_order_dialog.dart';
import 'package:askrindo/view/molecule/order_confirmation_molecule.dart';
import 'package:askrindo/view/molecule/order_summary_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RumahkuBuy3Page extends StatefulWidget {
  const RumahkuBuy3Page({super.key});

  @override
  State<RumahkuBuy3Page> createState() => _RumahkuBuy3PageState();
}

class _RumahkuBuy3PageState extends State<RumahkuBuy3Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    return Obx(() {
      return ScaffoldAtom(
        title: s.buy_insurance_rumahku,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StepAtom(currentStep: 3),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const OrderConfirmationMolecule(),
                      const SizedBox(height: 20),
                      const Divider(
                        thickness: 6,
                        color: ColorAtom.lighterGrey,
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${s.insured}: ${policy.nameInsured.value}',
                                style: TextStyleAtom.bold16,
                              ),
                            ),
                            SvgPicture.asset(
                              IconConst.icChevronRight,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(
                        thickness: 6,
                        color: ColorAtom.lighterGrey,
                      ),
                      const SizedBox(height: 16),
                      const OrderSummaryMolecule()
                    ],
                  ),
                ),
              ),
              BottomAtom(
                padding: const EdgeInsets.only(top: 12),
                child: ButtonAtom.primary(
                  width: double.infinity,
                  label: s.pay_now,
                  onTap: () {
                    submitOrderDialog(context);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
