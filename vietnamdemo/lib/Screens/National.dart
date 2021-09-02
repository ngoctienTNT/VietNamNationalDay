import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class National extends StatefulWidget {
  @override
  _NationalState createState() => _NationalState();
}

class _NationalState extends State<National> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(top: 75),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/background.gif"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        new Container(
          child: buildAnimationText(
              'Chào mừng kỷ niệm 76 năm Quốc Khánh Nước Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam\n                                          Độc Lập - Tự Do - Hạnh Phúc'),
        ),
      ],
    );
  }

  Widget buildAnimationText(String text) => Container(
      height: 80,
      child: Marquee(
        text: text,
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        blankSpace: 300,
        startPadding: 800,
      ));
}
