import 'package:flutter/material.dart';
import 'National.dart';
import 'Document.dart';
import 'Profile.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> pageList = <Widget>[
    National(),
    Document(),
    Profile(),
  ];

  static AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  _HomeState() {
    audioPlayer.open(
      Audio("assets/vietnam.mp3"),
      autoStart: false,
      showNotification: false,
    );
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedIndex == 1)
      audioPlayer.play();
    else
      audioPlayer.stop();
    return Scaffold(
      appBar: AppBar(title: Text("VietNam National Day")),
      body: pageList[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.article_rounded), label: "Document"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage("assets/quoc_ky.png"),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
