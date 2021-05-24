import 'package:flutter/material.dart';

class ProjectDesktop extends StatefulWidget {
  @override
  _ProjectDesktopState createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.green,
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
            "Bunlar Portfolşo sayfasından",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    );
  }
}
