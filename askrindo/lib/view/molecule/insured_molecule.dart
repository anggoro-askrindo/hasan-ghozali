import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/expansion_atom.dart';
import 'package:askrindo/view/atom/number_code_atom.dart';
import 'package:askrindo/view/atom/status_atom.dart';
import 'package:askrindo/view/atom/text_field_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InsuredMolecule extends StatelessWidget {
  const InsuredMolecule({super.key});

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
                s.insured,
                style: TextStyleAtom.bold16,
              ),
            ),
            StatusAtom(done: c.insuredDone),
          ],
        ),
        descWidget: Column(
          children: [
            Text(
              s.insured_desc,
              style: TextStyleAtom.regular13,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.insured_full_name,
              hintText: s.insured_full_name_hint,
              maxLength: 100,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]*$'))],
              onChanged: (value) => policy.nameInsured.value = value,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.nik,
              hintText: s.nik_hint,
              maxLength: 16,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))],
              onChanged: (value) => policy.nikInsured.value = value,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.email,
              hintText: s.email_hint,
              onChanged: (value) => policy.emailInsured.value = value,
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
            const SizedBox(height: 8),
          ],
        ),
      );
    });
  }
}
