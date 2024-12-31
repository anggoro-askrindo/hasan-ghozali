import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/info_model.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/expansion_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/molecule/info_insurance_molecule.dart';
import 'package:askrindo/view/molecule/insurance_benefits_molecule.dart';
import 'package:askrindo/view/page/rumahku_buy1_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RumahkuDetailPage extends StatefulWidget {
  const RumahkuDetailPage({super.key});

  @override
  State<RumahkuDetailPage> createState() => _RumahkuDetailPageState();
}

class _RumahkuDetailPageState extends State<RumahkuDetailPage> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ScaffoldAtom(
      title: '',
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          s.rumahku_insurance,
                          style: TextStyleAtom.bold16Primary,
                        ),
                        const SizedBox(height: 16),
                        InfoInsuranceMolecule(
                          data: InfoModel(
                            title: s.rumahku_info_title,
                            children: [
                              InfoModel(description: s.rumahku_info1),
                              InfoModel(description: s.rumahku_info2),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        InsuranceBenefitsMolecule(
                          data: InfoModel(
                            title: s.benefits_obtained,
                            children: [
                              InfoModel(
                                title: s.rumahku_benefits_title1('Rp20.000.000'),
                                description: s.rumahku_benefits_desc1,
                              ),
                              InfoModel(
                                title: s.rumahku_benefits_title2('Rp5.000.000'),
                                description: s.rumahku_benefits_desc2,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 6,
                    color: ColorAtom.lighterGrey,
                  ),
                  ExpansionAtom(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    title: s.terms_conditions,
                    desc: s.terms_conditions_desc,
                  ),
                  const Divider(
                    thickness: 6,
                    color: ColorAtom.lighterGrey,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      s.summary_info,
                      style: TextStyleAtom.bold16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomAtom(
            child: ButtonAtom.primary(
              width: double.infinity,
              label: s.buy_insurance,
              onTap: () => Get.to(() => const RumahkuBuy1Page()),
            ),
          ),
        ],
      ),
    );
  }
}
