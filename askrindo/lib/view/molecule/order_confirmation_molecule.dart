import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/container_info_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderConfirmationMolecule extends StatefulWidget {
  const OrderConfirmationMolecule({super.key});

  @override
  State<OrderConfirmationMolecule> createState() => _OrderConfirmationMoleculeState();
}

class _OrderConfirmationMoleculeState extends State<OrderConfirmationMolecule> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.order_confirmation,
            style: TextStyleAtom.bold16,
          ),
          const SizedBox(height: 5),
          Text(
            s.order_confirmation_desc,
            style: TextStyleAtom.regular14,
          ),
          const SizedBox(height: 12),
          ContainerInfoAtom(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.will_buy,
                  style: TextStyleAtom.regular14,
                ),
                const SizedBox(height: 4),
                Text(
                  s.rumahku,
                  style: TextStyleAtom.bold18,
                ),
                const SizedBox(height: 8),
                const Divider(
                  color: ColorAtom.lightGrey,
                ),
                const SizedBox(height: 8),
                _horizontalField(s.package_type, policy.package.value),
                const SizedBox(height: 12),
                _horizontalField(s.period, '1 Tahun'),
                const SizedBox(height: 12),
                _horizontalField(s.policy_start_date, policy.startDateCoverage.value),
                const SizedBox(height: 12),
                _horizontalField(s.policy_end_date, policy.endDateCoverage.value),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _horizontalField(String field, String? value) {
    return Row(
      children: [
        Text(
          field,
          style: TextStyleAtom.regular14,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            value ?? '-',
            style: TextStyleAtom.regular14,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
