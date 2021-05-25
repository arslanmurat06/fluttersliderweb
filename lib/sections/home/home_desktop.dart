import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout/animation/entrance_fader.dart';
import 'package:layout/widgets/navbar_desktop.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    print("home build");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TyperAnimatedTextKit(
              isRepeatingAnimation: true,
              speed: Duration(milliseconds: 100),
              textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w200),
              text: [
                " Software Engineer",
                " .NET Earner",
                " Flutter Enthusiast"
              ]),
        ],
      ),
    );
  }
}
