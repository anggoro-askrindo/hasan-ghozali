import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/payment_model.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/step_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/dialog/statement_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RumahkuBuy4Page extends StatefulWidget {
  const RumahkuBuy4Page({super.key});

  @override
  State<RumahkuBuy4Page> createState() => _RumahkuBuy4PageState();
}

class _RumahkuBuy4PageState extends State<RumahkuBuy4Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final item = c.list[c.index.value];
    return ScaffoldAtom(
      title: s.buy_insurance_rumahku,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StepAtom(currentStep: 4),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      s.select_payment_method,
                      style: TextStyleAtom.bold16,
                    ),
                    const SizedBox(height: 20),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) => const SizedBox(height: 24),
                      itemCount: listPayment().length,
                      itemBuilder: (context, index) {
                        var item = listPayment()[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (item.label ?? '').toUpperCase(),
                              style: TextStyleAtom.semiBold12BodyText,
                            ),
                            const SizedBox(height: 16),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              separatorBuilder: (context, index) => const SizedBox(height: 12),
                              itemCount: item.children?.length ?? 0,
                              itemBuilder: (context, index) {
                                var child = item.children?[index];
                                return Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorAtom.lightGrey),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: ColorAtom.secondary,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: Image.asset(child?.icon ?? ''),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          child?.label ?? '',
                                          style: TextStyleAtom.regular15,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            BottomAtom(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        s.total_payment.toUpperCase(),
                        style: TextStyleAtom.regular12BodyText,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          DataUtil.formatToIDR(item.price),
                          style: TextStyleAtom.bold15Primary,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ButtonAtom.primary(
                    width: double.infinity,
                    label: s.pay_now,
                    onTap: () {
                      statementDialog(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
