import 'package:flutter/material.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:lgapplication/widgets/drawer.dart';

class RulePage extends StatefulWidget {
  const RulePage({Key? key}) : super(key: key);

  @override
  State<RulePage> createState() => _RulePageState();
}

class _RulePageState extends State<RulePage> {
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
            "assets/images/dchapter.jpg",
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
                            "PREAMBLE",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 22.0,
                            ),
                            child: Text(
                              "Whereas, it is expedient to ensure transparent decision making through  institutionalized participation of Bhutanese citizens at grass-root level and to  decentralize administrative and financial authority to Dzongkhag Tshogdu  and Gewog Tshogde for good governance and effective delivery of services;" +
                                  '\n\n'
                                      "In exercise of powers under section 294 of the Local Government Act," +
                                  '\n\n'
                                      "2009 the Ministry of Home and Cultural Affairs in consultation with the  Dzongkhag Tshogdu and Gewog Tshogde, hereby adopts and promulgates  the Local Government Rules and Regul2ations, 2012.",
                              style: TextStyle(
                                fontSize: 14.5,
                                height: 1.4,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.0,
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 450,
                                height: 57,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 1:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Preliminary",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 2:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Dzongkhag Tshogdu and Gewog Tshogde",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 3:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Seal and Issuance of Order",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 4:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Chairperson and Deputy Chairperson",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 5:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Election Procedure",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 6:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Oath or Affirmation of Office",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 7:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Notification and Agenda",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 8:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Session",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 9:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Conduct of Business",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 10:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Voting",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 11:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Minute",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 12:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Zomdu",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 13:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Financial Power",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 14:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Leave of Absence, Resignation and Removal",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 15:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Committee",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 16:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Plans and Budget",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 17:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Monitoring and Evaluation",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 16:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Powers and Functions of Member",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 19:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Dzongdag",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "2Chapter 20:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Dzongrab",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 21:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Dungpa",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 22:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Gewog Administrative Officer",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 23:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Tshogdrung",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 24:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Gewog Accountant, Gaydrung and Chipon",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 25:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text:
                                              " Functions of Dzongkhag Tshogdu and Gewog Tshogde",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
                                  const EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: 390,
                                height: 47,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Chapter 26:",
                                          style: TextStyle(
                                            color: Color(0xff486958),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      TextSpan(
                                          text: " Miscellaneous",
                                          style: TextStyle(
                                              color: Color(0xff486958),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
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
          endDrawer: MyDrawer(),
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
                  child: Text("Rules and Regulations")),
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
                  color: Colors.white,
                  elevation: 20.0,
                  child: Center(
                    child: Text("Rules and Regulations",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
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
  double get maxExtent => expandedHeight + expandedHeight / 1.6;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
