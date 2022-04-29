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
  var items = {
    "Menu1": Container(),
  };

  Widget _menuItem(String title, Widget child, double size) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => child),
        );
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
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                    child: UserCompact(
                  name: "Ivan",
                  surname: "Ivanov",
                  isVertical: true,
                )),
              ),
              Divider(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Пример таблицы", TableExample(), 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 2", Container(), 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 3", Container(), 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 4", Container(), 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: _menuItem("Menu 5", Container(), 24),
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
                  _menuItem("Пример таблицы", TableExample(), 16),
                  _menuItem("Menu 2", Container(), 16),
                  _menuItem("Menu 3", Container(), 16),
                  _menuItem("Menu 4", Container(), 16),
                  _menuItem("Menu 5", Container(), 16),
                ],
              )
            : Container();
  }
}
