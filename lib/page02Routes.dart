import 'package:flutter/material.dart';

import 'page02.dart';

class Page02RouteNames {
  static const String root = '/';
  static const String detail = '/detail';
}

final Map<String, WidgetBuilder> page02Routes = {
  Page02RouteNames.root: (context) => Page02(),
  Page02RouteNames.detail: (context) => Page02Detail(),
};
