import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lgapplication/pages/all_dz_act.dart';
import 'package:lgapplication/pages/dz_main.dart';
import 'package:lgapplication/pages/all_dz_rule.dart';
import 'package:lgapplication/pages/en_main.dart';
import 'package:lgapplication/pages/splash_screen.dart';
import 'package:lgapplication/pages/all_en_act.dart';
import 'package:lgapplication/pages/homepage.dart';
import 'package:lgapplication/pages/all_en_rule.dart';
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
      },
    );
  }
}
