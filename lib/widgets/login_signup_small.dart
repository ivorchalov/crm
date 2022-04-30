import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'neumorphismbutton.dart';

class loginSignupSmall extends StatefulWidget {
  const loginSignupSmall({Key? key}) : super(key: key);

  @override
  State<loginSignupSmall> createState() => _loginSignupSmallState();
}

class _loginSignupSmallState extends State<loginSignupSmall> {
  bool isVisible = false;
  Widget _buildLogin() {
    return InkWell(
        onTap: () {
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
                        text: "Вход",
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
                                  hintText: "Введите пароль",
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
                            child: CustomText(text: "Войти")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        child: CustomText(
                          text: "Забыли пароль?",
                          textDecoration: TextDecoration.underline,
                        ),
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
          text: "Вход",
        ));
  }

  Widget _buildSignUp() {
    return InkWell(
        onTap: () {
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
                        text: "Регистрация",
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
                                  hintText: "Введите пароль",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: TextField(
                              obscureText: !isVisible,
                              decoration: InputDecoration(
                                icon: Icon(Icons.gif_box),
                                hintText: "Промокод",
                              ),
                            ),
                          ),
                        ],
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: NeumorphismButton(
                            width: MediaQuery.of(context).size.width,
                            child: CustomText(text: "Зарегистрироваться")),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // InkWell(
                      //   highlightColor: Colors.transparent,
                      //   hoverColor: Colors.transparent,
                      //   onTap: () {},
                      //   child: CustomText(
                      //     text: "Забыли пароль?",
                      //     textDecoration: TextDecoration.underline,
                      //   ),
                      // ),
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
          text: "Регистрация",
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLogin(),
        SizedBox(
          width: 10,
        ),
        _buildSignUp()
      ],
    );
  }
}
