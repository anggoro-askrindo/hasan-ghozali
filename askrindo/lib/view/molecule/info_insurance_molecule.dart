import 'package:askrindo/model/info_model.dart';
import 'package:askrindo/view/atom/container_info_atom.dart';
import 'package:askrindo/view/atom/info_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class InfoInsuranceMolecule extends StatelessWidget {
  final InfoModel? data;
  const InfoInsuranceMolecule({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ContainerInfoAtom(
      child: Column(
        children: [
          Text(
            data?.title ?? '',
            style: TextStyleAtom.bold16,
          ),
          const SizedBox(height: 4),
          ...List.generate(
            data?.children?.length ?? 0,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(top: 12),
                child: InfoAtom.check(data?.children?[index].description ?? ''),
              );
            },
          ),
        ],
      ),
    );
  }
}
