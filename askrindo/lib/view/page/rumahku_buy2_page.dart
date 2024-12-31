import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/policy_model.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/bottom_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/step_atom.dart';
import 'package:askrindo/view/atom/text_field_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/bottom_sheet.dart/date_time_bs.dart';
import 'package:askrindo/view/page/rumahku_buy25_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RumahkuBuy2Page extends StatefulWidget {
  const RumahkuBuy2Page({super.key});

  @override
  State<RumahkuBuy2Page> createState() => _RumahkuBuy2PageState();
}

class _RumahkuBuy2PageState extends State<RumahkuBuy2Page> {
  final _tecDate = TextEditingController();
  late RumahkuController c;

  @override
  void initState() {
    c = Get.find();
    c.policy.value = PolicyModel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ScaffoldAtom(
      title: s.buy_insurance_rumahku,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          final item = c.list[c.index.value];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StepAtom(currentStep: 2),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.policy_period,
                        style: TextStyleAtom.bold16,
                      ),
                      const SizedBox(height: 15),
                      TextFieldAtom(
                        controller: _tecDate,
                        title: s.policy_start_date,
                        hintText: s.policy_start_date_hint,
                        suffixIcon: IconConst.icCalendar,
                        onTap: () {
                          final today = DateTime.now();
                          final minimumDate = today.subtract(const Duration(days: 3));
                          final maxDate = today.add(const Duration(days: 3));
                          dateTimeBs(
                            context,
                            mode: CupertinoDatePickerMode.date,
                            minimumDate: minimumDate,
                            maximumDate: maxDate,
                            onDateTimeSelected: (value) {
                              final endDate = value.add(const Duration(days: 365));
                              _tecDate.text = DataUtil.dateToString(value);
                              c.policy.value.startDateCoverage.value = _tecDate.text;
                              c.policy.value.endDateCoverage.value = DataUtil.dateToString(endDate);
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SvgPicture.asset(
                            IconConst.icInfo,
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            s.policy_start_date_info,
                            style: TextStyleAtom.regular12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              BottomAtom(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            s.total_payment.toUpperCase(),
                            style: TextStyleAtom.regular12BodyText,
                          ),
                          Text(
                            DataUtil.formatToIDR(item.price),
                            style: TextStyleAtom.bold15Primary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    ButtonAtom.primary(
                      width: 115,
                      label: s.next,
                      onTap: c.policy.value.startDateCoverage.value != null
                          ? () {
                              c.policy.value.package.value = item.package;
                              Get.to(() => const RumahkuBuy25Page());
                            }
                          : null,
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
