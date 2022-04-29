import 'package:crm/constants/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/menu.dart';
import '../widgets/table_example.dart';
import '../widgets/top_nav.dart';

class TableExample extends StatelessWidget {
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
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(10),
        color: light,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: dark),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: DataTable2SimpleDemo(),
        ),
      ),
    );
  }
}
