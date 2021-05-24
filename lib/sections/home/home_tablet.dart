import 'package:flutter/material.dart';

class HomeTablet extends StatefulWidget {
  @override
  _HomeTabletState createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("This is tablet"),
      ),
    );
  }
}
