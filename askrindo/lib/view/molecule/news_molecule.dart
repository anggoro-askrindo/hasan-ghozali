import 'package:askrindo/model/news_model.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';

class NewsMolecule extends StatelessWidget {
  final NewsModel? data;
  const NewsMolecule({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              data?.image ?? '',
              width: 90,
              height: 68,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              data?.title ?? '',
              style: TextStyleAtom.semiBold15,
            ),
          ),
        ],
      ),
    );
  }
}
