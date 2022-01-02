import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import '../model/act_dzo.dart';
import '../sizers_helpers.dart';
import '../widgets/drawer.dart';

class ChapterdzAct extends StatefulWidget {
  final Acts_Dzongkha dact;
  const ChapterdzAct({
    Key? key,
    required this.dact,
  }) : super(key: key);

  @override
  _ChapterdzActState createState() => _ChapterdzActState();
}

class _ChapterdzActState extends State<ChapterdzAct> {
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
    player.pause();
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
          appBar: AppBar(
            title: Center(
              child: Text(
                widget.dact.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: displayWidth(context) * 0.07,
                    fontWeight: FontWeight.w900),
              ),
            ),
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
          ),
          body: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                Text(
                  widget.dact.subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: displayWidth(context) * 0.06,
                    height: 1.6,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffe8a348),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url1);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url1 != null
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des1,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url2);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url2 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des2,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url3);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url3 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des3,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url4);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url4 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des4,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url5);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url5 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des5,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url6);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url6 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des6,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url7);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url7 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des7,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url8);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url8 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des8,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url9);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url9 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des9,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url10);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url10 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des10,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url11);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url11 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des11,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url12);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url12 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des12,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url13);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url13 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des13,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!isplaying && !audioplayed) {
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                      // await player
                      //     .setAsset('assets/audio/02-DZO-CH1.mp3');
                      await player.setUrl(widget.dact.url14);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.dact.url14 != ""
                      ? Image.asset(
                          'assets/icon/audio.png',
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.5,
                        )
                      : Icon(null),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 2, 25, 0),
                  child: Text(
                    widget.dact.des14,
                    style: TextStyle(
                      fontSize: displayWidth(context) * 0.045,
                      height: 1.6,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 255, 255, 255),
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
