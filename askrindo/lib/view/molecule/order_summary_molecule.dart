import 'package:askrindo/controller/rumahku_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSummaryMolecule extends StatefulWidget {
  const OrderSummaryMolecule({super.key});

  @override
  State<OrderSummaryMolecule> createState() => _OrderSummaryMoleculeState();
}

class _OrderSummaryMoleculeState extends State<OrderSummaryMolecule> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    RumahkuController c = Get.find();
    final policy = c.policy.value;
    final item = c.list[c.index.value];
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.order_summary,
            style: TextStyleAtom.bold16,
          ),
          const SizedBox(height: 16),
          _horizontalField(
            'Premi ${policy.package.value}',
            DataUtil.formatToIDR(item.price),
          ),
          const SizedBox(height: 12),
          _horizontalField(s.total, DataUtil.formatToIDR(item.price), style: TextStyleAtom.bold15),
        ],
      );
    });
  }

  Widget _horizontalField(
    String field,
    String? value, {
    TextStyle? style,
  }) {
    return Row(
      children: [
        Text(
          field,
          style: style ?? TextStyleAtom.regular14,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            value ?? '-',
            style: style ?? TextStyleAtom.regular14,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
