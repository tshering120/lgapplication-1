import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lgapplication/pages/all_en_act.dart';
import 'package:lgapplication/pages/all_en_rule.dart';
import 'package:lgapplication/pages/homepage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utls/routes.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "";
  final _myformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff192c3b),
            Color(0xff192f3d),
            Color(0xff192f3d),
            Color(0xff1a303e),
          ],
        )),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff192c3b),
                    Color(0xff192f3d),
                    Color(0xff192f3d),
                    Color(0xff1a303e),
                  ],
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75)),
                ],
              ),
              child: Container(
                child: Form(
                  key: _myformkey,
                  child: Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Local Government of Bhutan',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.leftToRightWithFade,
                  child: LoginPage(),
                )),
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffec9015),
                            ),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.fade,
                  child: LawPage(),
                )),
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffec9015),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "LG Act 2009",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.fade,
                  child: RulePage(),
                )),
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffec9015),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              " LG Rules and Regulation",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                onTap: _webURL,
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffec9015),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "Publications",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Container(
                  height: 37,
                  alignment: Alignment.center,
                  child: Text(
                    "Quick Links",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff466756),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: _webhomeURL,
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffec9015),
                            ),
                            child: Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 29,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "Department of Local Governance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _webURL() async {
  const url = 'https://www.dlg.mohca.gov.bt/about-lg/20';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _webhomeURL() async {
  const url = 'https://www.dlg.mohca.gov.bt';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _feedbackURL() async {
  const url =
      'mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
