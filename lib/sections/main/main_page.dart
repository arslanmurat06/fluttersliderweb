import 'package:flutter/material.dart';
import 'package:layout/animation/entrance_fader.dart';
import 'package:layout/sections/home/home.dart';
import 'package:layout/sections/portfolio/portfolio.dart';
import 'package:layout/sections/projetcs/project.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "Portfoliio",
    "Services",
    "Projects",
    "Contact"
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.phone,
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return PortfolioPage();
    } else if (i == 2) {
      return ProjectPage();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarTabDesktop(),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        body: Container(
          child: RawScrollbar(
            controller: _scrollController,
            thumbColor: Colors.blue,
            thickness: 5,
            child: ScrollablePositionedList.builder(
              itemScrollController: _itemScrollController,
              itemPositionsListener: _itemPositionListener,
              itemCount: 3,
              itemBuilder: (context, index) {
                return sectionWidget(index);
              },
            ),
          ),
        ));
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Fader(
        child: Text("LOGO"),
        offset: Offset(0, -20),
        duration: Duration(seconds: 1),
        delay: Duration(seconds: 3),
      ),
      actions: [
        Text("About"),
        Text("Portfolio"),
        Text("Showcase"),
      ],
    );
  }
}
