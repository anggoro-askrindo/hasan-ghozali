import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Askrindo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorAtom.primary),
        useMaterial3: true,
      ),
      locale: const Locale('id'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const LoginPage(),
    );
  }
}
