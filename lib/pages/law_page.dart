import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:lgapplication/api/acts_api.dart';
import 'package:lgapplication/model/acts_eng.dart';
import 'package:lgapplication/pages/chapter_en_act.dart';
import 'package:lgapplication/utls/routes.dart';
import 'dart:async';
import 'package:lgapplication/widgets/drawer.dart';

import '../sizers_helpers.dart';

class LawPage extends StatefulWidget {
  @override
  State<LawPage> createState() => _LawPageState();
}

class _LawPageState extends State<LawPage> {
  String name = "";
  bool changetwoButton = false;
  bool changeButton = false;
  final _myformkey = GlobalKey<FormState>();
  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  String audioasset = "assets/audio/02chapter.mp3";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      ByteData bytes =
          await rootBundle.load(audioasset); //load audio from assets
      audiobytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) {
        //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {});
      });

      player.onAudioPositionChanged.listen((Duration p) {
        currentpos =
            p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds: currentpos).inHours;
        int sminutes = Duration(milliseconds: currentpos).inMinutes;
        int sseconds = Duration(milliseconds: currentpos).inSeconds;
        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {
          //refresh the UI
        });
      });
    });
    super.initState();
  }

  moveToChapter(BuildContext context) async {
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
            "assets/images/3rdpage.png",
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
                    child: FutureBuilder<List<Acts_English>>(
                      future: ActsApi.getActsLocali(context),
                      builder: (context, snapshot) {
                        final acte = snapshot.data;

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
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                        "Preamble",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize:
                                              displayWidth(context) * 0.065,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      subtitle: Container(
                                        width: displayWidth(context) * 0.9,
                                        child: Text(
                                          "Whereas, the Constitution of the Kingdom of Bhutan provides  for direct participation of the people in the development and  management of their own social, economic and environmental  wellbeing through decentralization and devolution of power and  authority; " +
                                              '\n\n'
                                                  "Whereas, the Local Governments are elected bodies to represent  the interests of local communities and fulfill their aspirations and  needs;" +
                                              '\n\n'
                                                  "Parliament of Bhutan do hereby enacts as follows:",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize:
                                                displayWidth(context) * 0.045,
                                            height: 1.5,
                                            fontWeight: FontWeight.w100,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: buildActs(acte!)),
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
          endDrawer: MyDrawer(),
        ),
      ],
    );
  }
}

Widget buildActs(List<Acts_English> acte) => ListView.builder(
      // ignore: prefer_const_constructors
      physics: BouncingScrollPhysics(),
      itemCount: acte.length,
      itemBuilder: (context, index) {
        final sact = acte[index];
        return InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ChapterenAct(sact: sact),
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5.0, 20.0, 5.0),
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: displayWidth(context) * 0.98,
              height: displayHeight(context) * 0.07,
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
                  child: Text("Local Government Act of Bhutan")),
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
                    child: Text("Local Government Act of Bhutan",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
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
  double get maxExtent => expandedHeight + expandedHeight / 1.6;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
