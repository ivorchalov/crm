import 'package:flutter/material.dart';

const largeScreenSize = 1366;
const smallScreenSize = 360;
const mediumScreenSize = 768;
//const customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  //final Widget mediumScreen;
  //final Widget customScreen;
  final Widget largeScreen;
  final Widget smallScreen;
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= mediumScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      }),
    );
  }
}
