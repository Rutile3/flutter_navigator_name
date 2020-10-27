import 'package:flutter/material.dart';

import 'page01Routes.dart';

class Page01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page01'),
          RaisedButton(
            child: const Text('Push Page01Detail'),
            onPressed: () {
              Navigator.pushNamed(context, Page01RouteNames.detail);
            },
          ),
        ],
      ),
    );
  }
}

class Page01Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page01Detail'),
          RaisedButton(
            child: const Text('Pop Page01Detail'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
