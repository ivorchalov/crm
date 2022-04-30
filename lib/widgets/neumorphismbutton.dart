import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:crm/constants/colors.dart';

class NeumorphismButton extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  const NeumorphismButton(
      {Key? key, required this.child, this.width = 200, this.height = 50})
      : super(key: key);

  @override
  State<NeumorphismButton> createState() => _NeumorfismButtonState();
}

class _NeumorfismButtonState extends State<NeumorphismButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Offset offset = (isPressed) ? Offset(5, 5) : Offset(15, 15);
    double blur = (isPressed) ? 5.0 : 30.0;

    return Listener(
      onPointerDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onPointerUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedContainer(
        width: widget.width,
        height: widget.height,
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: light,
            boxShadow: [
              BoxShadow(
                blurRadius: blur,
                offset: offset,
                color: lightGrey,
                inset: isPressed,
              ),
              BoxShadow(
                  blurRadius: blur,
                  offset: -offset,
                  color: Colors.white,
                  inset: isPressed)
            ]),
        child: Center(child: widget.child),
      ),
    );
  }
}
