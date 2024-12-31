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
import 'package:flutter/material.dart';

class BahariDetailPage extends StatefulWidget {
  const BahariDetailPage({super.key});

  @override
  State<BahariDetailPage> createState() => _BahariDetailPageState();
}

class _BahariDetailPageState extends State<BahariDetailPage> {
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
                          s.bahari_insurance,
                          style: TextStyleAtom.bold16Primary,
                        ),
                        const SizedBox(height: 16),
                        InfoInsuranceMolecule(
                          data: InfoModel(
                            title: s.bahari_info_title,
                            children: [
                              InfoModel(description: s.bahari_info1),
                              InfoModel(description: s.bahari_info2),
                              InfoModel(description: s.bahari_info3),
                              InfoModel(description: s.bahari_info4),
                              InfoModel(description: s.bahari_info5),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        InsuranceBenefitsMolecule(
                          data: InfoModel(
                            title: s.benefits_obtained,
                            children: [
                              InfoModel(description: s.bahari_benefits_desc1),
                              InfoModel(description: s.bahari_benefits_desc2),
                              InfoModel(description: s.bahari_benefits_desc3),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    child: InsuranceBenefitsMolecule(
                      data: InfoModel(
                        title: s.required_documents,
                        children: [
                          InfoModel(description: s.ktp_registrant),
                        ],
                      ),
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
                  ExpansionAtom(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    title: s.exception,
                    desc: s.exception_desc,
                  ),
                  const Divider(
                    thickness: 6,
                    color: ColorAtom.lighterGrey,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          s.summary_info,
                          style: TextStyleAtom.bold16,
                        ),
                        const SizedBox(height: 15),
                        ButtonAtom.secondary(
                          width: double.infinity,
                          label: s.download_riplay,
                          onTap: () {},
                        ),
                      ],
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
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
