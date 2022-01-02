import 'package:flutter/material.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'package:lgapplication/widgets/drawerdzo.dart';

import '../sizers_helpers.dart';

class DzongkhaPage extends StatefulWidget {
  const DzongkhaPage({Key? key}) : super(key: key);

  @override
  State<DzongkhaPage> createState() => _DzongkhaPageState();
}

class _DzongkhaPageState extends State<DzongkhaPage> {
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
      await Navigator.pushNamed(context, MyRoutes.dzoactRoute);
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
      await Navigator.pushNamed(context, MyRoutes.dzoruleRoute);
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
            horizontal: 0.0,
          ),
          child: Image.asset(
            "assets/images/2ndpage.jpg",
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
                    expandedHeight: displayHeight(context) * 0.099,
                  ),
                ),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _myformkey,
                      child: Column(
                        children: [
                          Container(
                            width: displayWidth(context) * 0.9,
                            child: Text(
                              "དེ་ཡང་ འབྲུག་གི་རྩ་ཁྲིམས་ཆེན་མོ་གིས་ དབང་ཚད་དང་དབང་འཛིན་ཕྱིར་སྤེལ་ཐོག་ལས་ མི་ སེར་ཁོང་རའི་ མི་སྡེ་དང་ དཔལ་འབྱོར་ དེ་ལས་ མཐའ་འཁོར་གྱི་ཕན་བདེ་གོང་འཕེལ་དང་  འཛིན་སྐྱོང་ནང་ཐད་ཀར་གྲལ་གཏོགས་འབད་ནིའི་དབང་ཆ་སྤྲོད་དེ་ཡོདཔ་བཞིན་དུ། " +
                                  '\n\n'
                                      "ས་གནས་ཀྱི་གཞུང་དེ་ཚུ་ ས་གནས་ཀྱི་མི་སྡེ་ཚུའི་མཐའ་དོན་གྲུབ་ནི་དང་ ཁོང་གི་རེ་འདོད་དང་ དགོས་མཁོ་གྲུབ་ནི་གི་དོན་ལུ་སྤྱི་འཐུས་སྦེ་བཙག་འཐུ་གྲུབ་པའི་འདུས་ཚོགས་ཅིག་ཨིནམ་ལས་ བརྟེན། " +
                                  '\n\n'
                                      "འབྲུག་གི་སྤྱི་ཚོགས་ཀྱིས་གཤམ་གསལ་ལྟར་ ཆ་འཇོག་མཛད་གྲུབ། ",
                              style: TextStyle(
                                fontSize: displayWidth(context) * 0.042,
                                height: 1.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: displayHeight(context) * 0.06,
                          ),
                          InkWell(
                            onTap: () => moveToLaw(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton
                                  ? displayWidth(context) * 0.5
                                  : displayWidth(context) * 0.7,
                              height: displayHeight(context) * 0.05,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.arrow_right_alt_sharp,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    )
                                  : Text(
                                      "འབྲུག་གི་ས་གནས་གཞུང་གི་བཅའ་ཁྲིམས།",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: displayWidth(context) * 0.041,
                                      ),
                                    ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 150 : 5),
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
                          SizedBox(
                            height: displayHeight(context) * 0.015,
                          ),
                          InkWell(
                            onTap: () => moveToRule(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changetwoButton
                                  ? displayWidth(context) * 0.5
                                  : displayWidth(context) * 0.7,
                              height: displayHeight(context) * 0.05,
                              alignment: Alignment.center,
                              child: changetwoButton
                                  ? Icon(
                                      Icons.arrow_right_alt_sharp,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    )
                                  : Text(
                                      "ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི།",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: displayWidth(context) * 0.041,
                                      ),
                                    ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(
                                    changetwoButton ? 150 : 5),
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
                          SizedBox(
                            height: 50.0,
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
    final cardTopPosition = expandedHeight / 1.5 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 1.7,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              toolbarHeight: 60,
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
                  child: Text("འབྲུག་གི་ས་གནས་གཞུང།")),
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
                    child: Text("འབྲུག་གི་ས་གནས་གཞུང།",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: displayWidth(context) * 0.05,
                            color: Color.fromARGB(255, 2, 2, 2))),
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
  double get maxExtent => expandedHeight + expandedHeight / 1.4;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
