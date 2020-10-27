import 'package:flutter/material.dart';

import 'page01.dart';

class Page01RouteNames {
  static const String root = '/';
}

final Map<String, WidgetBuilder> page01Routes = {
  Page01RouteNames.root: (context) => Page01(),
};
