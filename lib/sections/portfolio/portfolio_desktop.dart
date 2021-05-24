import 'package:flutter/material.dart';

class PortfolioDesktop extends StatefulWidget {
  @override
  _PortfolioDesktopState createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
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
