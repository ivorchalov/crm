import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:crm/widgets/user_compact.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

Widget _buildMenuButtons(BuildContext context) {
  return !ResponsiveWidget.isSmallScreen(context)
      ? Row(
          children: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: dark.withOpacity(.7),
                    )),
                Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: active,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: light, width: 2)),
                    ))
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: dark.withOpacity(.7),
                )),
            SizedBox(
              width: 12,
            ),
            Container(
              width: 1,
              height: 32,
              color: dark.withOpacity(.7),
            ),
            SizedBox(
              width: 24,
            ),
          ],
        )
      : Container();
}

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset(
                      "assets/icons/icon.png",
                      width: 28,
                    ),
                  ),
                )
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
      title: Row(children: [
        Visibility(
            child: CustomText(
          text: "CRM",
          color: lightGrey,
          weight: FontWeight.bold,
        )),
        Expanded(child: Container(child: MenuItems())),
        _buildMenuButtons(context),
        UserCompact(name: "Ivan", surname: "Ivanov")
      ]),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: dark),
    );
