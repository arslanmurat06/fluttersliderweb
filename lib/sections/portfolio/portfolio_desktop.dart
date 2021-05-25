import 'package:flutter/material.dart';
import 'package:layout/animation/entrance_fader.dart';

class PortfolioDesktop extends StatefulWidget {
  PortfolioDesktop({Key key}) : super(key: key);
  @override
  _PortfolioDesktopState createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  Widget build(BuildContext context) {
    print("portfolio build");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Fader(
              offset: Offset(0, -20),
              duration: Duration(seconds: 1),
              delay: Duration(seconds: 3),
              child: Image.asset("assets/dentist/1.png"))
        ],
      ),
    );
  }
}
