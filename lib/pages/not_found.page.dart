import 'package:flutter/material.dart';

import '../drawer.dart';

class NotFoundPage extends StatelessWidget {
  static const routeName = '/not-found';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => NotFoundPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page not found'),
      ),
      drawer: SgeDrawer(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text('The page could not be found.'),
        ),
      ),
    );
  }
}
