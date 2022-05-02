import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';
import 'neumorphismbutton.dart';

class ForgotPasswordLarge extends StatefulWidget {
  const ForgotPasswordLarge({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordLarge> createState() => _ForgotPasswordLargeState();
}

class _ForgotPasswordLargeState extends State<ForgotPasswordLarge> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            bool isVisible = false;
            return StatefulBuilder(builder: ((context, setState) {
              return AlertDialog(
                backgroundColor: light,
                title: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back)),
                    Spacer(),
                    CustomText(
                      text: 'Восстановление пароля',
                      size: 24,
                    ),
                    Spacer()
                  ],
                ),
                content: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
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
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: NeumorphismButton(
                                width: MediaQuery.of(context).size.width,
                                child: CustomText(text: "Восстановить")),
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
                      ))
                    ],
                  ),
                ),
              );
            }));
          },
        );
      },
      child: CustomText(
        text: "Забыли пароль?",
        textDecoration: TextDecoration.underline,
      ),
    );
  }
}
