import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/const/image_const.dart';
import 'package:askrindo/controller/login_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/menu_model.dart';
import 'package:askrindo/model/news_model.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/molecule/info_menu_molecule.dart';
import 'package:askrindo/view/molecule/insurance_menu_molecule.dart';
import 'package:askrindo/view/molecule/news_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    LoginController c = Get.find();
    final s = S.of(context);
    return ScaffoldAtom(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorAtom.primary,
        shape: const CircleBorder(),
        child: SvgPicture.asset(IconConst.icCs),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: s.hello,
                          style: TextStyleAtom.regular16Primary,
                        ),
                        TextSpan(
                          text: c.user.value.phoneNumber.value ?? '',
                          style: TextStyleAtom.bold16Primary,
                        ),
                      ],
                    ),
                  ),
                ),
                ButtonAtom.icon(
                  icon: IconConst.icScan,
                  size: 40,
                  onTap: () {},
                ),
                ButtonAtom.icon(
                  icon: IconConst.icNotif,
                  size: 40,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ImageConst.banner,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 34),
                  Text(
                    s.buy_insurance.toUpperCase(),
                    style: TextStyleAtom.semiBold12BodyText,
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: List.generate(listInsuranceMenu(context).length, (index) {
                      return InsuranceMenuMolecule(
                        data: listInsuranceMenu(context)[index],
                      );
                    }),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    s.info.toUpperCase(),
                    style: TextStyleAtom.semiBold12BodyText,
                  ),
                  const SizedBox(height: 12),
                  Row(children: [
                    InfoMenuMolecule(
                      label: s.how_claim_insurance,
                      icon: ImageConst.klaim,
                      color: ColorAtom.clearSkies,
                    ),
                    const SizedBox(width: 13),
                    InfoMenuMolecule(
                      label: s.about_askrindo,
                      icon: ImageConst.about,
                      color: ColorAtom.pureLaughter,
                    ),
                  ]),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        s.latest_news.toUpperCase(),
                        style: TextStyleAtom.semiBold12BodyText,
                      ),
                      ButtonAtom.link(
                        label: s.see_all,
                        icon: IconConst.icArrowRight,
                        onTap: () {},
                      )
                    ],
                  ),
                  const SizedBox(height: 17),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(height: 16),
                    itemCount: listNews(context).length,
                    itemBuilder: (context, index) {
                      return NewsMolecule(data: listNews(context)[index]);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
