import 'package:flutter/material.dart';

import 'page02.dart';

class Page02RouteNames {
  static const String root = '/';
}

final Map<String, WidgetBuilder> page02Routes = {
  Page02RouteNames.root: (context) => Page02(),
};
