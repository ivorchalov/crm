import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/pages/large_home_screen.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:crm/pages/small_home_screen.dart';
import 'package:crm/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import 'widgets/menu.dart';

class AppLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: MenuItems(
          isVertical: true,
        ),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeHomeScreen(),
        smallScreen: SmallHomeScreen(),
      ),
    );
  }
}
