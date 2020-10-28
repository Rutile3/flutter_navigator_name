import 'package:flutter/material.dart';

import 'page04.dart';
import 'page05.dart';
import 'page06.dart';

class DrawerRouteNames {
  static const String page04 = '/page04';
  static const String page05 = '/page05';
  static const String page06 = '/page06';
}

final Map<String, WidgetBuilder> drawerRoutes = {
  DrawerRouteNames.page04: (context) => Page04(),
  DrawerRouteNames.page05: (context) => Page05(),
  DrawerRouteNames.page06: (context) => Page06(),
};
