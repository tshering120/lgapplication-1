import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lgapplication/model/rules_dzo.dart';
import 'package:lgapplication/pages/all_en_rule.dart';
import 'package:lgapplication/pages/detail_dz_rule.dart';
import 'package:lgapplication/widgets/drawerdzo.dart';
import 'package:page_transition/page_transition.dart';

import '../api/rulesdzo_api.dart';
import '../sizers_helpers.dart';

class DzorulePage extends StatefulWidget {
  const DzorulePage({Key? key}) : super(key: key);

  @override
  State<DzorulePage> createState() => _DzorulePageState();
}

class _DzorulePageState extends State<DzorulePage> {
  String name = "";
  final _myformkey = GlobalKey<FormState>();
  bool isplaying = false;
  bool audioplayed = false;
  late AudioPlayer player;
  late AudioPlayer player2;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    player2.dispose();
    super.dispose();
  }

  void _playSound() {
    player.play();
  }

  void _stopSound() {
    player.stop();
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
            "assets/images/3rdpage.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SafeArea(
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
                      child: Container(
                    child: FutureBuilder<List<Rules_Dzongkha>>(
                      future: RulesdzApi.getRulesLocali(context),
                      builder: (context, snapshot) {
                        final rules = snapshot.data;

                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          default:
                            if (snapshot.hasError) {
                              return Center(
                                child: Text(
                                    'some error occurred! Please hold on..'),
                              );
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Text(
                                              "ངོ་སྤྲོད།",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize:
                                                    displayWidth(context) *
                                                        0.055,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () async {
                                                // await player
                                                //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                                                await player.setUrl(
                                                    'https://firebasestorage.googleapis.com/v0/b/local-governance-360ff.appspot.com/o/DzoActs%2F01%20DZO-Preamble.mp3?alt=media&token=5aa84e69-1b34-4aa1-b1fd-0b0987d17386');
                                                player.play();
                                              },
                                              icon: Image.asset(
                                                'assets/icon/audio.png',
                                                width: displayWidth(context) *
                                                    0.07,
                                                height: displayHeight(context) *
                                                    0.07,
                                              ),
                                            ),
                                            Container(
                                              width:
                                                  displayWidth(context) * 0.9,
                                              child: Text(
                                                "དེ་ཡང་ འབྲུག་གི་རྩ་ཁྲིམས་ཆེན་མོ་གིས་ དབང་ཚད་དང་དབང་འཛིན་ཕྱིར་སྤེལ་ཐོག་ལས་ མི་ སེར་ཁོང་རའི་ མི་སྡེ་དང་ དཔལ་འབྱོར་ དེ་ལས་ མཐའ་འཁོར་གྱི་ཕན་བདེ་གོང་འཕེལ་དང་  འཛིན་སྐྱོང་ནང་ཐད་ཀར་གྲལ་གཏོགས་འབད་ནིའི་དབང་ཆ་སྤྲོད་དེ་ཡོདཔ་བཞིན་དུ།" +
                                                    '\n\n'
                                                        "ས་གནས་ཀྱི་གཞུང་དེ་ཚུ་ ས་གནས་ཀྱི་མི་སྡེ་ཚུའི་མཐའ་དོན་གྲུབ་ནི་དང་ ཁོང་གི་རེ་འདོད་དང་ དགོས་མཁོ་གྲུབ་ནི་གི་དོན་ལུ་སྤྱི་འཐུས་སྦེ་བཙག་འཐུ་གྲུབ་པའི་འདུས་ཚོགས་ཅིག་ཨིནམ་ལས་ བརྟེན།" +
                                                    '\n\n'
                                                        "འབྲུག་གི་སྤྱི་ཚོགས་ཀྱིས་གཤམ་གསལ་ལྟར་ ཆ་འཇོག་མཛད་གྲུབ།",
                                                style: TextStyle(
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.041,
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w100,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(child: buildRules(rules!)),
                                ],
                              );
                            }
                        }
                      },
                    ),
                  )),
                ],
              ),
            ),
          ),
          endDrawer: MyDrawerdzo(),
        ),
      ],
    );
  }
}

Widget buildRules(List<Rules_Dzongkha> rules) => ListView.builder(
      // ignore: prefer_const_constructors
      physics: BouncingScrollPhysics(),
      itemCount: rules.length,
      itemBuilder: (context, index) {
        final sact = rules[index];
        return InkWell(
          onTap: () => Navigator.of(context).push(PageTransition(
            type: PageTransitionType.bottomToTop,
            child: ChapterdzRules(sact: sact),
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 20.0, 5.0),
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: displayWidth(context) * 0.98,
              height: displayHeight(context) * 0.06,
              alignment: Alignment.centerLeft,
              child: ListTile(
                leading: Text(
                  sact.title + ":",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: displayWidth(context) * 0.04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                title: Text(sact.subtitle,
                    style: TextStyle(
                        color: Color(0xffe8a348),
                        fontSize: displayWidth(context) * 0.038,
                        fontWeight: FontWeight.w500)),
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
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

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
                  child: Text("ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི")),
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
                    child: Text("ས་གནས་གཞུང་གི་བཅའ་ཡིག་དང་སྒྲིགས་གཞི",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: displayWidth(context) * 0.048,
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
