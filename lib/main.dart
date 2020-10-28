import 'package:flutter/material.dart';

import 'currentNavigation.dart';
import 'drawerRoutes.dart';
import 'myBottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'Flutter Demo',
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: const Text('メニュー'),
            ),
            _buildDrawerListTile(
              title: const Text('Page04'),
              route: DrawerRouteNames.page04,
            ),
            _buildDrawerListTile(
              title: const Text('Page05'),
              route: DrawerRouteNames.page05,
            ),
            _buildDrawerListTile(
              title: const Text('Page06'),
              route: DrawerRouteNames.page06,
            ),
          ],
        ),
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

  ListTile _buildDrawerListTile({Text title, String route}) {
    return ListTile(
      title: title,
      onTap: () {
        // Drawerを閉じてから選択されたページをpushする。
        Navigator.pop(context);
        currentNavigationKeys[currentNavigationName]
            .currentState
            .pushNamed(route);
      },
    );
  }

  Offstage _buildOffstageNavigator(CurrentNavigationName name) {
    var routes = currentNavigationRoutes[name];
    routes.addAll(drawerRoutes);
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
    if (name == currentNavigationName) {
      currentNavigationKeys[name]
          .currentState
          .popUntil((route) => route.isFirst);
    } else {
      setState(() => currentNavigationName = name);
    }
  }
}
