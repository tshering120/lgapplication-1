import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

import '../utls/routes.dart';
import '../widgets/drawer.dart';

class ChapterdzAct extends StatefulWidget {
  const ChapterdzAct({Key? key}) : super(key: key);

  @override
  _ChapterdzActState createState() => _ChapterdzActState();
}

class _ChapterdzActState extends State<ChapterdzAct> {
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
            horizontal: 0.0,
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
                    expandedHeight: 95,
                  ),
                ),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _myformkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 0.0,
                              horizontal: 25.0,
                            ),
                            child: Text(
                              "སྔོན་བརྗོད།",
                              style: TextStyle(
                                fontSize: 25,
                                height: 1.6,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          ListView(
                            shrinkWrap: true,
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 1),
                            children: const <Widget>[
                              Text(
                                "མཚན་གནས་དང་ འགོ་འཛུགས་ཟླ་ཚེས་ ཁྱབ་ཚད།",
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.6,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "༡. བཅའ་ཁྲིམས་འདི། ",
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'ཀ༽ འབྲུག་གི་ས་གནས་གཞུང་གི་བཅའ་ཁྲིམས་༢༠༠༩ ཅན་མ་ཟེར་བརྗོད་དགོ།',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'ཁ༽ རང་ལུགས་གནམ་ལོ་ལྕགས་ཕོ་སྟག་ལོ་ ཟླ་དང་པའི་ཚེས་༣༠ ལུའམ་ སྤྱི་ལོ་ ༢༠༡༠ ཟླ་༣ པའི་ཚེས་༡༥ ལས་འགོ་བཟུང་སྟེ་ བསྟར་སྤྱོད་འབད་དགོ།',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'ག༽ འབྲུག་རྒྱལ་ཁབ་ཀྱི་ས་ཁྱོན་ཡོངས་ལུ་ཁྱབ་དགོ། ',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () async {
                              if (!isplaying && !audioplayed) {
                                int result = await player.playBytes(audiobytes);
                                if (result == 1) {
                                  //play success
                                  setState(() {
                                    isplaying = true;
                                    audioplayed = true;
                                  });
                                } else {
                                  print("Error while playing audio.");
                                }
                              } else if (audioplayed && isplaying) {
                                int result = await player.stop();
                                if (result == 1) {
                                  //stop success
                                  setState(() {
                                    isplaying = false;
                                    audioplayed = false;
                                    currentpos = 0;
                                  });
                                } else {
                                  print("Error on resume audio.");
                                }
                              }
                            },
                            icon: Icon(
                              isplaying ? Icons.volume_up : Icons.volume_down,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 50.0,
                              horizontal: 24.0,
                            ),
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
      height: expandedHeight + expandedHeight / 3,
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
                  child: Text("ལེའུ་ ༡ པ། ")),
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
                    child: Text("ལེའུ་ ༡ པ། ",
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
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
