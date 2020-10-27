import 'package:flutter/material.dart';

import 'page02Routes.dart';

class Page02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page02'),
          RaisedButton(
            child: const Text('Push Page02Detail'),
            onPressed: () {
              Navigator.pushNamed(context, Page02RouteNames.detail);
            },
          ),
        ],
      ),
    );
  }
}

class Page02Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page02Detail'),
          RaisedButton(
            child: const Text('Pop Page02Detail'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
