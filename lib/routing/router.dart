import 'package:flutter/widgets.dart';

import 'package:learnrouter/routing/route_names.dart';
import 'package:learnrouter/views/about/about.dart';
import 'package:learnrouter/views/contact/contact.dart';
import 'package:learnrouter/views/home/home_view.dart';
import 'package:learnrouter/views/team/our_team.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(About(), settings);
    case TeamRoute:
      return _getPageRoute(OurTeam(), settings);
    case ContactRoute:
      return _getPageRoute(Contact(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              child,
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
