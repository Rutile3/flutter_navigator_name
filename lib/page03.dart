import 'package:flutter/material.dart';

import 'page03Routes.dart';

class Page03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page03'),
          RaisedButton(
            child: const Text('Push Page03Detail'),
            onPressed: () {
              Navigator.pushNamed(context, Page03RouteNames.detail);
            },
          ),
        ],
      ),
    );
  }
}

class Page03Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page03Detail'),
          RaisedButton(
            child: const Text('Pop Page03Detail'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
