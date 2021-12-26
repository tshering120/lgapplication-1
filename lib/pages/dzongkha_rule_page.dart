import 'package:flutter/material.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:lgapplication/widgets/drawerdzo.dart';

class DzorulePage extends StatefulWidget {
  const DzorulePage({Key? key}) : super(key: key);

  @override
  _DzorulePageState createState() => _DzorulePageState();
}

class _DzorulePageState extends State<DzorulePage> {
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
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 2.0,
          ),
          child: Image.asset(
            "assets/images/bg_3.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: CustomSliverDelegate(
                    expandedHeight: 85,
                  ),
                ),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _myformkey,
                      child: Column(
                        children: [
                          Text(
                            "ངོ་སྤྲོད།",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 0.0,
                              horizontal: 25.0,
                            ),
                            child: Text(
                              "དེ་ཡང་ འབྲུག་པའི་མི་སེར་ཚུ་གིས་ གྲོང་གསེབ་ཀྱི་གནད་ཚད་ལུ་ བཅའ་མར་གཏོགས་ནིའི་ལམ་ལུགས་ཐོག་ དྭངས་ གསལ་ཅན་གྱི་གྲོས་ཐག་ཆོད་དེ་ རྫོང་ཁག་ཚོགས་འདུ་དང་རྒེད་འོག་ཚོགས་སྡེ་གིས་ གཞུང་སྐྱོང་ལེགས་ལྡན་དང་  ཕན་ནུས་ཅན་གྱི་ཞབས་ཏོག་འགྲུབ་ནི་ལུ་ བདག་སྐྱོང་དང་དངུལ་འབྲེལ་གྱི་དབང་ཆ་ཕྱིར་སྤེལ་འབད་ནི་གི་ཐབས་ཤེས་ ལུ་ཨིན།" +
                                  '\n\n'
                                      "འབྲུག་གི་ས་གནས་གཞུང་གི་བཅའ་ཁྲིམས་༢༠༠༩ ཅན་མའི་དོན་ཚན་༢༩༤ པའི་མངའ་འོག་གི་དབང་ཚད་ལག་ལེན་ ཐོག་ ནང་སྲིད་དང་སྲོལ་འཛིན་ལྷན་ཁག་གིས་ རྫོང་ཁག་ཚོགས་འདུ་དང་རྒེད་འོག་ཚོགས་སྡེའི་གཅིག་ཁར་ འདྲི་ བསྟུན་ཐོག་ ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི་༢༠༡༢ ཅན་མ་འདི་ ཆ་འཇོག་དང་ཁྱབ་སྤེལ་འབདཝ་ ཨིན། " +
                                  '\n\n',
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.5,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 24.0,
                            ),
                          ),

                          InkWell(
                            onTap: () => moveToRule(context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changetwoButton ? 150 : 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: changetwoButton
                                    ? Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Color(0xff3f604f),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35.0, 0, 0, 0),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: "ལེའུ་༡ པ།:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text: " སྔོན་བརྗོད། ",
                                                style: TextStyle(
                                                    color: Color(0xfff6850d),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),

                          InkWell(
                            onTap: () => moveToRule(context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changetwoButton ? 150 : 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: changetwoButton
                                    ? Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Color(0xff3f604f),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35.0, 0, 0, 0),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: " ལེའུ་༢ པ།:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " རྫོང་ཁག་ཚོགས་འདུ་དང་ རྒེད་འོག་ཚོགས་སྡེ། ",
                                                style: TextStyle(
                                                    color: Color(0xfff6850d),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          InkWell(
                            onTap: () => moveToRule(context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changetwoButton ? 150 : 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: changetwoButton
                                    ? Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Color(0xff3f604f),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35.0, 0, 0, 0),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: " ལེའུ་༣ པ།:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ཐིའུ་དང་བཀའ་རྒྱ་བཏོན་ནི། ",
                                                style: TextStyle(
                                                    color: Color(0xfff6850d),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          InkWell(
                            onTap: () => moveToRule(context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changetwoButton ? 150 : 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: changetwoButton
                                    ? Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Color(0xff3f604f),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35.0, 0, 0, 0),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: "ལེའུ་༤ པ།:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ཁྲི་འཛིན་དང་ ཁྲི་འཛིན་འོག་མ། ",
                                                style: TextStyle(
                                                    color: Color(0xfff6850d),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 5
                          InkWell(
                            onTap: () => moveToRule(context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changetwoButton ? 150 : 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: changetwoButton
                                    ? Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Color(0xff3f604f),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35.0, 0, 0, 0),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: "ལེའུ་༥ པ།:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " བཙག་འཐུའི་བྱ་སྒོ་རིམ་པ། ",
                                                style: TextStyle(
                                                    color: Color(0xfff6850d),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 6
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༦ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " གོ་གནས་ཀྱི་དམ་བཅའ་ ཡང་ན་ ངོས་ལེན། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 7
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༧ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " བརྡ་འཕྲིན་དང་གྲོས་གཞི།",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),

                          //chapter 8
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༨ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ཚོགས་རིམ། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 9
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༩ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ལས་སྒོའི་ཀུན་སྤྱོད། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          // chapter 10
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༠ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ཚོགས་རྒྱན་བསྐྱུར་ནི། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          // chapter 11
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༡ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " གྲོས་བཅུད། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //  chapter 12
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༢ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " འཛོམས་འདུ། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 13
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༣ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " དངུལ་འབྲེལ་དབང་ཚད། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          // chapter 14
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༤ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ཆད་ཞུགས་ཀྱི་ངལ་གསོ་ དགོངས་ཞུ་ དེ་ལས་ཕྱིར་དབྱུང་། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 15
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༥ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ཚོགས་ཆུང་། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 16
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༦ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " འཆར་གཞི་དང་འཆར་དངུལ།  ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 17
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༧ པ།:",
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ལྟ་རྟོག་དང་དབྱེ་ཞིབ་འབད་ནི། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 18
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༨ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " འཐུས་མི་ཚུའི་དབང་ཚད་དང་བྱ་སྒོ། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 19
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༡༩ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " རྫོང་བདག། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 20
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༢༠ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " རྫོང་རབ། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 21
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༢༡ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " དྲུང་པ།  ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 22
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༢༢ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " རྒེད་འོག་བདག་སྐྱོང་འགོ་དཔོན།  ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 23
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༢༣ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ཚོགས་དྲུང་། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //chapter 24
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "ལེའུ་ ༢༤ པ།:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " རྒེད་འོག་རྩིས་འཛིན་པ་ རྒེད་དྲུང་དང་ སྤྱི་དཔོན། ",
                                          style: TextStyle(
                                              color: Color(0xfff6850d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff486958),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          endDrawer: MyDrawerdzo(),
        ),
      ],
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 1.6 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/header.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 50,
                ),
              ),
              elevation: 0.0,
              title: Opacity(
                  opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                  child: Text("ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི།")),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 25 * percent, vertical: 2),
                child: Card(
                  elevation: 20.0,
                  child: Center(
                    child: Text("ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི།",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 1.9;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
