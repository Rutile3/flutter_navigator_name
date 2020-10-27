import 'package:flutter/material.dart';

import 'page01Routes.dart';
import 'page02Routes.dart';
import 'page03Routes.dart';

enum CurrentNavigationName {
  page01,
  page02,
  page03,
}

Map<CurrentNavigationName, GlobalKey<NavigatorState>> currentNavigationKeys = {
  CurrentNavigationName.page01: GlobalKey<NavigatorState>(),
  CurrentNavigationName.page02: GlobalKey<NavigatorState>(),
  CurrentNavigationName.page03: GlobalKey<NavigatorState>(),
};

Map<CurrentNavigationName, Map<String, WidgetBuilder>> currentNavigationRoutes =
    {
  CurrentNavigationName.page01: page01Routes,
  CurrentNavigationName.page02: page02Routes,
  CurrentNavigationName.page03: page03Routes,
};
