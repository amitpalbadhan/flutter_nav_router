import 'package:flutter/material.dart';
import 'package:learnrouter/views/header/header.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Contact Us Coming Soon',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}
