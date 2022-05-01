import 'package:crm/pages/table_example_screen.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:crm/widgets/user_compact.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';
import 'login_signup_large.dart';
import 'login_signup_small.dart';

class UnauthorizedMenuItems extends StatefulWidget {
  final bool isVertical;
  const UnauthorizedMenuItems({Key? key, this.isVertical = false})
      : super(key: key);

  @override
  State<UnauthorizedMenuItems> createState() => _UnauthorizedMenuItemsState();
}

class _UnauthorizedMenuItemsState extends State<UnauthorizedMenuItems> {
  String hoveredElement = "";

  Widget _menuItem(String title, String route, double size) {
    return InkWell(
      onTap: () {
        if (ResponsiveWidget.isSmallScreen(context)) {
          Navigator.pushNamedAndRemoveUntil(context, route, (route) => true);
        } else {
          Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
        }
      },
      onHover: (val) {
        if (val) {
          setState(() {
            hoveredElement = title;
          });
        } else {
          setState(() {
            hoveredElement = "";
          });
        }
      },
      hoverColor: Colors.transparent,
      child: CustomText(
        text: title,
        color: (hoveredElement == title) ? dark : dark.withOpacity(.7),
        textDecoration:
            (hoveredElement == title) ? TextDecoration.underline : null,
        size: size,
      ),
    );
  }

  Widget _buildLoginsignup() {
    return ResponsiveWidget.isSmallScreen(context)
        ? loginSignupSmall()
        : LoginSignupLarge();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context) && widget.isVertical
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Divider(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Главная", '/', 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Пример таблицы", '/table_example', 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Цены", '/price', 24),
              ),
            ],
          )
        : !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 1,
                    height: 32,
                    color: dark.withOpacity(.7),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _menuItem("Главная", '/', 16),
                      _menuItem("Пример таблицы", '/table_example', 16),
                      _menuItem("Цены", '/price', 16),
                    ],
                  )),
                  Container(
                    width: 1,
                    height: 32,
                    color: dark.withOpacity(.7),
                  ),
                  _buildLoginsignup(),
                ],
              )
            : Container();
  }
}
