import 'package:crm/pages/table_example_screen.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:crm/widgets/user_compact.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';

class MenuItems extends StatefulWidget {
  final bool isVertical;
  const MenuItems({Key? key, this.isVertical = false}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  String hoveredElement = "";
  bool isAuthtorized = false;
  var items = {
    "Menu1": Container(),
  };

  Widget _menuItem(String title, String route, double size) {
    return InkWell(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, route, (route) => true);
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
    return (isAuthtorized)
        ? Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(
                child: UserCompact(
              name: "Ivan",
              surname: "Ivanov",
              isVertical: true,
            )),
          )
        : Container();
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
                child: _menuItem("Menu 3", '', 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 4", '', 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 5", '', 24),
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
                  _menuItem("Пример таблицы", '/table_example', 16),
                  _menuItem("Menu 3", '', 16),
                  _menuItem("Menu 4", '', 16),
                  _menuItem("Menu 5", '', 16),
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
                  SizedBox(
                    width: 12,
                  ),
                ],
              )
            : Container();
  }
}
