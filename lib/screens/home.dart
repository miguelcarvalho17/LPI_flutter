import 'package:flutter/material.dart';

import 'NavBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('UFP')
      ),
      drawer: NavBar(),
    );
  }
}