import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lgapplication/sizers_helpers.dart';
import 'package:lgapplication/utls/routes.dart';
import 'package:lgapplication/widgets/drawer.dart';

import '../model/rules_eng.dart';

class ChapterRules extends StatefulWidget {
  final Rules_English sact;
  const ChapterRules({
    Key? key,
    required this.sact,
  }) : super(key: key);

  @override
  _ChapterRulesState createState() => _ChapterRulesState();
}

class _ChapterRulesState extends State<ChapterRules> {
  String name = "";
  bool changetwoButton = false;
  bool changeButton = false;
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

  Widget playButton(BuildContext context) {
    return Container(
      child: Stack(
        children: [],
      ),
    );
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
                widget.sact.title,
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
          body: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                Text(
                  widget.sact.subtitle,
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
                      await player.setUrl(widget.sact.url1);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url1 != null
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
                    widget.sact.des1,
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
                      await player.setUrl(widget.sact.url2);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url2 != ""
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
                    widget.sact.des2,
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
                      await player.setUrl(widget.sact.url3);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url3 != ""
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
                    widget.sact.des3,
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
                      await player.setUrl(widget.sact.url4);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url4 != ""
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
                    widget.sact.des4,
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
                      await player.setUrl(widget.sact.url5);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url5 != ""
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
                    widget.sact.des5,
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
                      await player.setUrl(widget.sact.url6);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url6 != ""
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
                    widget.sact.des6,
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
                      await player.setUrl(widget.sact.url7);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url7 != ""
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
                    widget.sact.des7,
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
                      await player.setUrl(widget.sact.url8);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url8 != ""
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
                    widget.sact.des8,
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
                      await player.setUrl(widget.sact.url9);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url9 != ""
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
                    widget.sact.des9,
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
                      await player.setUrl(widget.sact.url10);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url10 != ""
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
                    widget.sact.des10,
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
                      await player.setUrl(widget.sact.url11);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url11 != ""
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
                    widget.sact.des11,
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
                      await player.setUrl(widget.sact.url12);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url12 != ""
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
                    widget.sact.des12,
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
                      await player.setUrl(widget.sact.url13);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url13 != ""
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
                    widget.sact.des13,
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
                      await player.setUrl(widget.sact.url14);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url14 != ""
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
                    widget.sact.des14,
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
                      await player.setUrl(widget.sact.url15);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url15 != ""
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
                    widget.sact.des15,
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
                      await player.setUrl(widget.sact.url16);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url16 != ""
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
                    widget.sact.des16,
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
                      await player.setUrl(widget.sact.url17);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url17 != ""
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
                    widget.sact.des17,
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
                      await player.setUrl(widget.sact.url18);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url18 != ""
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
                    widget.sact.des18,
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
                      await player.setUrl(widget.sact.url19);
                      _playSound();
                    } else if (audioplayed && isplaying) {
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                      });
                      _stopSound();
                    }
                  },
                  icon: widget.sact.url19 != ""
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
                    widget.sact.des19,
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
