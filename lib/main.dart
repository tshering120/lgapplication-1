import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lgapplication/pages/chapter_dz_act.dart';
import 'package:lgapplication/pages/dzongkha_act_page.dart';
import 'package:lgapplication/pages/dzongkha_page.dart';
import 'package:lgapplication/pages/dzongkha_rule_page.dart';
import 'package:lgapplication/pages/english_page.dart';
import 'package:lgapplication/pages/home_page.dart';
import 'package:lgapplication/pages/law_page.dart';
import 'package:lgapplication/pages/login_page.dart';
import 'package:lgapplication/pages/rule_page.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:lgapplication/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.englishRoute: (context) => EnglishPage(),
        MyRoutes.dzongkhaRoute: (context) => DzongkhaPage(),
        MyRoutes.lawRoute: (context) => LawPage(),
        MyRoutes.ruleRoute: (context) => RulePage(),
        MyRoutes.dzoactRoute: (context) => DzoactPage(),
        MyRoutes.dzoruleRoute: (context) => DzorulePage(),
        MyRoutes.chapterdzactRoute: (context) => ChapterdzAct(),
      },
    );
  }
}
