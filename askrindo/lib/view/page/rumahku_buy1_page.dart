import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/info_model.dart';
import 'package:askrindo/model/menu_model.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/step_atom.dart';
import 'package:askrindo/view/atom/tab_bar_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/molecule/info_rumahku_package_molecule.dart';
import 'package:askrindo/view/molecule/insurance_benefits_molecule.dart';
import 'package:askrindo/view/molecule/select_policy_period_molecule.dart';
import 'package:askrindo/view/page/rumahku_buy2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RumahkuBuy1Page extends StatefulWidget {
  const RumahkuBuy1Page({super.key});

  @override
  State<RumahkuBuy1Page> createState() => _RumahkuBuy1PageState();
}

class _RumahkuBuy1PageState extends State<RumahkuBuy1Page> with TickerProviderStateMixin {
  late TabController _tabController;
  late RumahkuController c;

  @override
  void initState() {
    super.initState();
    c = Get.put(RumahkuController());
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      c.index.value = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ScaffoldAtom(
      title: s.buy_insurance_rumahku,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          final index = c.index.value;
          final item = c.list[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StepAtom(currentStep: 1),
              const SizedBox(height: 24),
              Text(
                s.choose_insurance_package,
                style: TextStyleAtom.bold16,
              ),
              const SizedBox(height: 15),
              TabBarAtom.regular(
                controller: _tabController,
                tabs: List.generate(
                  c.list.length,
                  (index) => MenuModel(label: c.list[index].package ?? ''),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoRumahkuPackageMolecule(
                        package: item.package ?? '',
                        price: DataUtil.formatToIDR(item.price),
                      ),
                      const SizedBox(height: 16),
                      InsuranceBenefitsMolecule(
                        data: InfoModel(
                          title: s.benefits_obtained,
                          children: [
                            InfoModel(
                              title: s.rumahku_benefits_title1(DataUtil.formatToIDR(item.fire)),
                              description: s.rumahku_benefits_desc1,
                            ),
                            InfoModel(
                              title: s.rumahku_benefits_title2(DataUtil.formatToIDR(item.accident)),
                              description: s.rumahku_benefits_desc2,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              BottomAtom(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    SelectPolicyPeriodMolecule(
                      price: DataUtil.formatToIDR(item.price),
                    ),
                    const SizedBox(height: 24),
                    ButtonAtom.primary(
                      width: double.infinity,
                      label: s.next,
                      onTap: () => Get.to(() => const RumahkuBuy2Page()),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
