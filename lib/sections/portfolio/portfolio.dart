import 'package:flutter/material.dart';
import 'package:layout/sections/portfolio/portfolio_desktop.dart';
import 'package:layout/sections/portfolio/portfolio_mobile.dart';
import 'package:layout/sections/portfolio/portfolio_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPage extends StatefulWidget {
  PortfolioPage({Key key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortfolioMobile(),
      tablet: PortfolioTablet(),
      desktop: PortfolioDesktop(),
    );
  }
}
