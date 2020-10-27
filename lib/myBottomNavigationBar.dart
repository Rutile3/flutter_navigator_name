import 'package:flutter/material.dart';

import 'currentNavigation.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({this.onTap});
  final ValueChanged<CurrentNavigationName> onTap;

  @override
  MyBottomNavigationBarState createState() => MyBottomNavigationBarState();
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final Map<CurrentNavigationName, Icon> _icons = {
    CurrentNavigationName.page01: Icon(Icons.home),
    CurrentNavigationName.page02: Icon(Icons.photo_album),
    CurrentNavigationName.page03: Icon(Icons.chat),
  };
  final Map<CurrentNavigationName, String> _label = {
    CurrentNavigationName.page01: 'home',
    CurrentNavigationName.page02: 'photo_album',
    CurrentNavigationName.page03: 'chat',
  };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildItem(CurrentNavigationName.page01),
        _buildItem(CurrentNavigationName.page02),
        _buildItem(CurrentNavigationName.page03),
      ],
      currentIndex: _currentIndex,
      fixedColor: Colors.blueAccent,
      onTap: (index) {
        setState(() => _currentIndex = index);
        widget.onTap(CurrentNavigationName.values[index]);
      },
      type: BottomNavigationBarType.fixed,
    );
  }

  BottomNavigationBarItem _buildItem(CurrentNavigationName currentNavigationName) {
    return BottomNavigationBarItem(
      icon: _icons[currentNavigationName],
      label: _label[currentNavigationName],
    );
  }
}
