import 'package:flutter/material.dart';
import 'package:learnrouter/views/header/header.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            alignment: Alignment.center,
            child: Text(
              'About Us Coming Soon',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}
