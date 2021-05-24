import 'package:flutter/material.dart';
import 'package:layout/animation/entrance_fader.dart';
import 'package:layout/widgets/navbar_desktop.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.red,
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Selam",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          Text(
            "Ben Murat",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "Naber",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "Bunlar home sayfasından",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    );
  }
}
