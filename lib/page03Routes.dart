import 'package:flutter/material.dart';

import 'page03.dart';

class Page03RouteNames {
  static const String root = '/';
  static const String detail = '/detail';
}

final Map<String, WidgetBuilder> page03Routes = {
  Page03RouteNames.root: (context) => Page03(),
  Page03RouteNames.detail: (context) => Page03Detail(),
};
