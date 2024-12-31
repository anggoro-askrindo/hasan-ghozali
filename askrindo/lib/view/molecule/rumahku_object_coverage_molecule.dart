import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/expansion_atom.dart';
import 'package:askrindo/view/atom/status_atom.dart';
import 'package:askrindo/view/atom/text_field_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RumahkuObjectCoverageMolecule extends StatelessWidget {
  const RumahkuObjectCoverageMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    return Obx(() {
      return ExpansionAtom(
        initiallyExpanded: true,
        titleWidget: Row(
          children: [
            Expanded(
              child: Text(
                s.object_coverage,
                style: TextStyleAtom.bold16,
              ),
            ),
            StatusAtom(done: c.coverageDone),
          ],
        ),
        descWidget: Column(
          children: [
            Text(
              s.object_coverage_desc,
              style: TextStyleAtom.regular13,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.ownership_status,
              hintText: s.ownership_status_hint,
              suffixIcon: IconConst.icChevronDown,
              onTap: () {},
            ),
            // const SizedBox(height: 16),
            // TextFieldAtom(
            //   title: s.birth_date,
            //   hintText: s.birth_date_hint,
            //   suffixIcon: IconConst.icCalendar,
            //   onTap: () {},
            // ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.full_address,
              hintText: s.full_address_hint,
              maxLines: 4,
              onChanged: (value) => policy.addressCoverage.value = value,
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    });
  }
}
