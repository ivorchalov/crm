import 'package:crm/widgets/authtorized_menu.dart';
import 'package:crm/widgets/unauthorized_menu.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final bool isVertical;
  const Menu({Key? key, this.isVertical = false}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isAuthorized = true; // * true to check how authorized looks like
  @override
  Widget build(BuildContext context) {
    return isAuthorized
        ? AuthtorizedMenu(
            isVertical: widget.isVertical,
          )
        : UnauthorizedMenuItems(
            isVertical: widget.isVertical,
          );
  }
}
