import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';
import 'neumorphismbutton.dart';

class ForgotPasswordSmall extends StatefulWidget {
  const ForgotPasswordSmall({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordSmall> createState() => _ForgotPasswordSmallState();
}

class _ForgotPasswordSmallState extends State<ForgotPasswordSmall> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
          showModalBottomSheet<void>(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: light,
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(builder: ((context, setState) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Восстановление пароля",
                        size: 20,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "E-mail"),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.mail),
                                  hintText: "Введите e-mail"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(text: "Пароль"),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: TextField(
                              obscureText: !isVisible,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.lock),
                                  hintText: "Введите новый пароль",
                                  suffixIcon: IconButton(
                                    onPressed: () => setState(() {
                                      isVisible = !isVisible;
                                    }),
                                    icon: isVisible
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  )),
                            ),
                          ),
                        ],
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: NeumorphismButton(
                            width: MediaQuery.of(context).size.width,
                            child: CustomText(text: "Восстановить")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CustomText(
                          text: "Назад",
                          size: 12,
                          color: dark.withOpacity(.7),
                          textDecoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                );
              }));
            },
          );
        },
        child: CustomText(
          text: "Забыли пароль?",
          textDecoration: TextDecoration.underline,
        ));
  }
}
