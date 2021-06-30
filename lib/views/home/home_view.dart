import 'package:flutter/material.dart';
import 'package:learnrouter/views/header/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(),
    );
  }
}
