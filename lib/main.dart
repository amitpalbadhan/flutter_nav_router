import 'package:flutter/material.dart';
import 'package:learnrouter/configure_web.dart';
import 'package:learnrouter/routing/route_names.dart';
import 'package:learnrouter/routing/router.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
