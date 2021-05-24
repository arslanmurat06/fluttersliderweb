import 'package:flutter/material.dart';
import 'package:layout/sections/home/home_desktop.dart';
import 'package:layout/sections/home/home_mobile.dart';
import 'package:layout/sections/home/home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}
