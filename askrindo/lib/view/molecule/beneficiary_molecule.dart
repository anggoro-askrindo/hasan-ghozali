import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/expansion_atom.dart';
import 'package:askrindo/view/atom/number_code_atom.dart';
import 'package:askrindo/view/atom/status_atom.dart';
import 'package:askrindo/view/atom/text_field_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/bottom_sheet.dart/date_time_bs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BeneficiaryMolecule extends StatefulWidget {
  const BeneficiaryMolecule({super.key});

  @override
  State<BeneficiaryMolecule> createState() => _BeneficiaryMoleculeState();
}

class _BeneficiaryMoleculeState extends State<BeneficiaryMolecule> {
  final _tecDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    final s = S.of(context);
    return Obx(() {
      return ExpansionAtom(
        initiallyExpanded: true,
        titleWidget: Row(
          children: [
            Expanded(
              child: Text(
                s.beneficiary,
                style: TextStyleAtom.bold16,
              ),
            ),
            StatusAtom(done: c.beneficiaryDone),
          ],
        ),
        descWidget: Column(
          children: [
            Text(
              s.beneficiary_desc,
              style: TextStyleAtom.regular13,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.beneficiary_full_name,
              hintText: s.beneficiary_full_name_hint,
              maxLength: 100,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]*$'))],
              onChanged: (value) => policy.nameBeneficiary.value = value,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              controller: _tecDate,
              title: s.birth_date,
              hintText: s.birth_date_hint,
              suffixIcon: IconConst.icCalendar,
              onTap: () {
                dateTimeBs(
                  context,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeSelected: (value) {
                    _tecDate.text = DataUtil.dateToString(value);
                    c.policy.value.birthDateBeneficiary.value = _tecDate.text;
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.phone_number,
              hintText: s.phone_number_hint,
              maxLength: 30,
              prefix: const NumberCodeAtom(),
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))],
              onChanged: (value) => policy.phoneNumberInsured.value = value,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.beneficiary_relation,
              hintText: s.beneficiary_relation_hint,
              suffixIcon: IconConst.icChevronDown,
              onTap: () {},
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    });
  }
}
