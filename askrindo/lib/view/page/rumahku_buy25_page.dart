import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/molecule/beneficiary_molecule.dart';
import 'package:askrindo/view/molecule/insured_molecule.dart';
import 'package:askrindo/view/molecule/rumahku_object_coverage_molecule.dart';
import 'package:askrindo/view/page/rumahku_buy3_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RumahkuBuy25Page extends StatefulWidget {
  const RumahkuBuy25Page({super.key});

  @override
  State<RumahkuBuy25Page> createState() => _RumahkuBuy25PageState();
}

class _RumahkuBuy25PageState extends State<RumahkuBuy25Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    return ScaffoldAtom(
      title: s.buy_insurance_rumahku,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InsuredMolecule(),
                  Divider(
                    thickness: 6,
                    color: ColorAtom.lighterGrey,
                  ),
                  RumahkuObjectCoverageMolecule(),
                  Divider(
                    thickness: 6,
                    color: ColorAtom.lighterGrey,
                  ),
                  BeneficiaryMolecule(),
                ],
              ),
            ),
          ),
          Obx(() {
            return BottomAtom(
              child: ButtonAtom.primary(
                width: double.infinity,
                label: s.next,
                onTap: c.allDone
                    ? () {
                        policy.phoneNumberInsured.value =
                            DataUtil.removeLeadingZero(policy.phoneNumberInsured.value ?? '');

                        policy.phoneNumberBeneficiary.value =
                            DataUtil.removeLeadingZero(policy.phoneNumberBeneficiary.value ?? '');

                        Get.to(() => const RumahkuBuy3Page());
                      }
                    : null,
              ),
            );
          }),
        ],
      ),
    );
  }
}
