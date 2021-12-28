import 'package:flutter/material.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:lgapplication/widgets/drawer.dart';

import '../sizers_helpers.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({Key? key}) : super(key: key);

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
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
                              "The Department of Local Governance began as Local Governance Division in 2005 under the Ministry of Home and Cultural Affairs to strengthen the Local Government. In 2009, the Division was upgraded to the Department of Local Governance in accordance with Article 9 (8) and Article 22 (1) of the Constitution of the Kingdom of Bhutan and the Local Government Act 2009 which charts out the legal framework for the Local Government. Basically, the Department is mandated to promote and strengthen local governance; to coordinate development of the Local Government’s capacities; and to bolster the inter-governmental coordination. The mandate envisages the Local Government making informed decisions and implementing coordinated activities by the Local Government.",
                              style: TextStyle(
                                fontSize: displayWidth(context) * 0.034,
                                height: 1.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: displayHeight(context) * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 24.0,
                            ),
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
                                      "Local Government Act of Bhutan",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: displayWidth(context) * 0.035,
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
                            height: displayHeight(context) * 0.02,
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
                                      "Rules and Regulations",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: displayWidth(context) * 0.035,
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
              toolbarHeight: 90,
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
                  child: Text("Local Government of Bhutan")),
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  elevation: 20.0,
                  child: Center(
                    child: Text("Local Government of Bhutan",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: displayWidth(context) * 0.05,
                          color: Color.fromARGB(255, 0, 0, 0),
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
  double get maxExtent => expandedHeight + expandedHeight / 1.4;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
