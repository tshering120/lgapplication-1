import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lgapplication/pages/all_dz_act.dart';
import 'package:lgapplication/pages/all_dz_rule.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/homepage.dart';

class MyDrawerdzo extends StatelessWidget {
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
                      height: 1,
                    ),
                    Text(
                      'འབྲུག་གི་ས་གནས་གཞུང།',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
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
                              'གདོང་ཤོག།',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.fade,
                  child: DzoactPage(),
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
                              'འབྲུག་གི་ས་གནས་གཞུང་གི་བཅའ་ཁྲིམས།',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.fade,
                  child: DzorulePage(),
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
                              'ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི།',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
              child: InkWell(
                onTap: _dwebURL,
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
                              "དཔེ་སྐྲུན།",
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
                    "འབྲེལ་མཐུད།",
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
                onTap: _dwebhomeURL,
                child: Ink(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 29,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "འབྲུག་གི་ས་གནས་གཞུང།",
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

Future<void> _dwebURL() async {
  const url = 'https://www.dlg.mohca.gov.bt/about-lg/20?language=dz';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _dwebhomeURL() async {
  const url = 'https://www.dlg.mohca.gov.bt/?language=dz';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
