import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:lgapplication/widgets/drawer.dart';

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
                  SliverFillRemaining(),
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
