import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key key}) : super(key: key);

  @override
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Text("LOGO"),
      actions: [Text("About"), Text("portfolio")],
    );
  }
}
