import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utls/routes.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "";
  bool changetwoButton = false;
  bool changeButton = false;
  final _myformkey = GlobalKey<FormState>();

  moveToLaw(BuildContext context) async {
    if (_myformkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.lawRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToRule(BuildContext context) async {
    if (_myformkey.currentState!.validate()) {
      setState(() {
        changetwoButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.ruleRoute);
      setState(() {
        changetwoButton = false;
      });
    }
  }

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
            CustomListTile(Icons.home, 'Home', () => {}),
            CustomListTile(Icons.keyboard_arrow_right_outlined,
                'Local Goverment of Bhutan', () => {}),
            CustomListTile(Icons.keyboard_arrow_right_outlined,
                'Rules and Regulation', () => {}),
            CustomListTile(
                Icons.keyboard_arrow_right_outlined, 'Publication', () => {}),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => moveToLaw(context),
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
            CustomListTile(Icons.share, 'Share', () => {}),
            CustomListTile(Icons.question_answer, 'FAQs', () => {}),
            CustomListTile(Icons.phone, 'Contact', () => {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 10.0, 0),
      child: InkWell(
        splashColor: Colors.white,
        onTap: () => {},
        child: Container(
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
                      icon,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      text,
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
    );
  }
}
