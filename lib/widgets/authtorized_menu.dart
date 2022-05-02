import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';
import 'responsivewidget.dart';
import 'user_compact.dart';

class AuthtorizedMenu extends StatefulWidget {
  final bool isVertical;
  const AuthtorizedMenu({Key? key, this.isVertical = false}) : super(key: key);

  @override
  State<AuthtorizedMenu> createState() => _AuthtorizedMenuState();
}

class _AuthtorizedMenuState extends State<AuthtorizedMenu> {
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

  Widget _buildAcc() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Center(
          child: UserCompact(
        name: "Ivan",
        surname: "Ivanov",
        isVertical: true,
      )),
    );
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
              _buildAcc(),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.31),
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: dark.withOpacity(.7),
                        )),
                    Positioned(
                        top: 8,
                        right: 10,
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
              ),
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
                child: _menuItem("Проекты", '/projects', 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Пример таблицы", '/table_example', 24),
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
                  _menuItem("Главная", '/', 16),
                  _menuItem("Проекты", '/projects', 16),
                  _menuItem("Пример таблицы", '/table_example', 16),
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
                  UserCompact(name: "Ivan", surname: "Ivanov")
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [UserCompact(name: "Ivan", surname: "Ivanov")],
              );
  }
}
