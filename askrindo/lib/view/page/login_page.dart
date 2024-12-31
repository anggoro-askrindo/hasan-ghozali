import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/const/image_const.dart';
import 'package:askrindo/controller/login_controller.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/model/user_model.dart';
import 'package:askrindo/util/data_util.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/number_code_atom.dart';
import 'package:askrindo/view/atom/scaffold_atom.dart';
import 'package:askrindo/view/atom/text_field_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:askrindo/view/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(LoginController());
    var user = c.user.value;

    final s = S.of(context);
    return ScaffoldAtom(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                ImageConst.logo,
                width: 204,
                height: 53,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                s.welcome,
                style: TextStyleAtom.bold21Primary,
              ),
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.phone_number,
              hintText: s.phone_number_hint,
              maxLength: 30,
              prefix: const NumberCodeAtom(),
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))],
              onChanged: (value) => user.phoneNumber.value = value,
            ),
            const SizedBox(height: 16),
            TextFieldAtom(
              title: s.password,
              hintText: s.password_hint,
              withObscure: true,
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: ButtonAtom.link(
                label: s.forgot_password,
                style: TextStyleAtom.bold13,
                icon: IconConst.icArrowRight,
                onTap: () {},
              ),
            ),
            const SizedBox(height: 24),
            Obx(() {
              return ButtonAtom.primary(
                width: double.infinity,
                label: s.login,
                onTap: (user.phoneNumber.value ?? '').isNotEmpty
                    ? () {
                        user.phoneNumber.value = DataUtil.removeLeadingZero(user.phoneNumber.value ?? '');
                        Get.to(() => const MainPage());
                      }
                    : null,
              );
            }),
            const SizedBox(height: 16),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: ColorAtom.lighterGrey,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  s.or_login_with,
                  style: TextStyleAtom.regular13,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Divider(
                    color: ColorAtom.lighterGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonAtom.secondary(
                  width: 60,
                  height: 60,
                  icon: IconConst.icGoogle,
                  onTap: () {},
                ),
                const SizedBox(width: 24),
                ButtonAtom.secondary(
                  width: 60,
                  height: 60,
                  icon: IconConst.icApple,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  s.no_account,
                  style: TextStyleAtom.regular14,
                ),
                ButtonAtom.link(
                  label: s.sign_up_now,
                  style: TextStyleAtom.bold14,
                  color: ColorAtom.primary,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            ButtonAtom.secondary(
                width: double.infinity,
                label: s.as_guest,
                onTap: () {
                  c.user.value = UserModel();
                  Get.to(() => const MainPage());
                }),
          ],
        ),
      ),
    );
  }
}
