import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';

class UserCompact extends StatelessWidget {
  final String name;
  final String surname;
  final bool isVertical;
  const UserCompact(
      {Key? key,
      required this.name,
      required this.surname,
      this.isVertical = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !isVertical
        ? Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  child: CircleAvatar(
                      backgroundColor: light,
                      child: Icon(
                        Icons.person_outline,
                        color: dark.withOpacity(.7),
                      )),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              CustomText(
                text: "$name $surname",
                color: lightGrey,
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "$name $surname",
                color: lightGrey,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  child: CircleAvatar(
                      backgroundColor: light,
                      child: Icon(
                        Icons.person_outline,
                        color: dark.withOpacity(.7),
                      )),
                ),
              )
            ],
          );
  }
}
