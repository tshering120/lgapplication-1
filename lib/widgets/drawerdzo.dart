import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            CustomListTile(Icons.home, 'གདོང་ཤོག།', () => {}),
            CustomListTile(Icons.keyboard_arrow_right_outlined,
                'འབྲུག་གི་ས་གནས་གཞུང་གི་བཅའ་ཁྲིམས།', () => {}),
            CustomListTile(Icons.keyboard_arrow_right_outlined,
                'ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི།', () => {}),
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
            CustomListTile(Icons.share, 'གཞན་ལུ་སླབ་ནི།', () => {}),
            CustomListTile(Icons.question_answer, 'འབྲེལ་མཐུད།', () => {}),
            CustomListTile(Icons.phone, 'འབྲེལ་བ་འཐབ་ས།', () => {}),
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
                      size: 32,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
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
