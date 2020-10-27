import 'package:flutter/material.dart';

import 'myBottomNavigationBar.dart';
import 'currentNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var currentNavigationName = CurrentNavigationName.page01;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator(CurrentNavigationName.page01),
          _buildOffstageNavigator(CurrentNavigationName.page02),
          _buildOffstageNavigator(CurrentNavigationName.page03),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        onTap: _selectCurrentNavigation,
      ),
    );
  }

  Widget _buildOffstageNavigator(CurrentNavigationName name) {
    final routes = currentNavigationRoutes[name];
    return Offstage(
      offstage: currentNavigationName != name,
      child: Navigator(
        key: currentNavigationKeys[name],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routes[routeSettings.name](context),
          );
        },
      ),
    );
  }

  void _selectCurrentNavigation(CurrentNavigationName name) {
    // 指定されたタブが現在のタブと同じ場合はタブの最初のページへ、
    // 指定されたタブが現在のタブと異なる場合は他のタブのページへ遷移します。
    if (name == this.currentNavigationName) {
      currentNavigationKeys[name]
          .currentState
          .popUntil((route) => route.isFirst);
    } else {
      setState(() => this.currentNavigationName = name);
    }
  }
}
