import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/login_signup_large.dart';
import 'package:crm/widgets/login_signup_small.dart';
import 'package:crm/widgets/menu.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:crm/widgets/user_compact.dart';
import 'package:flutter/material.dart';

import 'unauthorized_menu.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/icon.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {
                key.currentState?.openDrawer();
              }),
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Visibility(
            child: CustomText(
          text: "CRM",
          color: lightGrey,
          weight: FontWeight.bold,
        )),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Menu(),
        ),
        //_buildAcc(context)
      ]),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: dark),
    );
