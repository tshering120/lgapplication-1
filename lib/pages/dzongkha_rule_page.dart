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
                            "???????????????????????????",
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
                              "?????????????????? ???????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????????????????? ??????????????? ?????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????  ?????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????" +
                                  '\n\n'
                                      "??????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????? ???????????? ???????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????? ?????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????? ???????????????????????????????????????????????????????????????????????? ???????????? " +
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
                                                text: "?????????????????? ??????:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text: " ????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                                text: " ?????????????????? ??????:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ???????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                                text: " ?????????????????? ??????:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ???????????????????????????????????????????????????????????????????????? ",
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
                                                text: "?????????????????? ??????:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ???????????????????????????????????? ????????????????????????????????????????????? ",
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
                                                text: "?????????????????? ??????:",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                            TextSpan(
                                                text:
                                                    " ????????????????????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ??? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ?????????????????????????????????????????????????????? ??????????????? ???????????????????????? ",
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
                                          text: "??????????????? ??? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ??????????????????????????????????????????????????????????????????",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ??? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ??????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ??? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ????????????????????????????????????????????????????????? ",
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ???????????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ?????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ?????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ?????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ????????????????????????????????????????????????????????? ??????????????????????????? ?????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ?????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ????????????????????????????????????????????????????????????  ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ????????????????????????????????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ?????????????????????????????????????????????????????????????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ??????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ???????????????????????? ",
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ?????????????????????  ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ????????????????????????????????????????????????????????????????????????????????????  ",
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text: " ????????????????????????????????? ",
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
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
                                          text: "??????????????? ?????? ??????:",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          )),
                                      TextSpan(
                                          text:
                                              " ??????????????????????????????????????????????????????????????? ??????????????????????????????????????? ?????????????????????????????? ",
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
                  child: Text("????????????????????????????????????????????????????????????????????????????????????????????????????????????")),
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
                    child: Text("????????????????????????????????????????????????????????????????????????????????????????????????????????????",
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
