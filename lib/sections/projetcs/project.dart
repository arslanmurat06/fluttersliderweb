import 'package:flutter/material.dart';
import 'package:layout/sections/portfolio/portfolio_desktop.dart';
import 'package:layout/sections/portfolio/portfolio_mobile.dart';
import 'package:layout/sections/portfolio/portfolio_tablet.dart';
import 'package:layout/sections/projetcs/project_desktop.dart';
import 'package:layout/sections/projetcs/project_mobile.dart';
import 'package:layout/sections/projetcs/project_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectPage extends StatefulWidget {
  ProjectPage({Key key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectMobile(),
      tablet: ProjectTablet(),
      desktop: ProjectDesktop(),
    );
  }
}
