import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/forgotpassword_large.dart';
import 'package:crm/widgets/neumorphismbutton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginSignupLarge extends StatefulWidget {
  const LoginSignupLarge({Key? key}) : super(key: key);

  @override
  State<LoginSignupLarge> createState() => _LoginSignupLargeState();
}

class _LoginSignupLargeState extends State<LoginSignupLarge> {
  Widget _buildLogin() {
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
                title: Center(
                    child: CustomText(
                  text: 'Вход',
                  size: 24,
                )),
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
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: NeumorphismButton(
                                width: MediaQuery.of(context).size.width,
                                child: CustomText(text: "Войти")),
                          ),
                          ForgotPasswordLarge(),
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
      child: CustomText(text: "Вход"),
    );
  }

  Widget _buildSignup() {
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
                title: Center(
                    child: CustomText(
                  text: 'Регистрация',
                  size: 24,
                )),
                content: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.6,
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
                                height: 8,
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
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: NeumorphismButton(
                                    width: MediaQuery.of(context).size.width,
                                    child:
                                        CustomText(text: "Зарегистрироваться")),
                              ),
                            ],
                          )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Нажимая на кнопку, вы даете ",
                                    style: TextStyle(
                                        color: lightGrey, fontSize: 14)),
                                TextSpan(
                                    text: "согласие",
                                    style: TextStyle(
                                        color: lightGrey,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                                TextSpan(
                                    text:
                                        " на обработку своих персональных данных.",
                                    style: TextStyle(
                                        color: lightGrey, fontSize: 14))
                              ])),
                          CustomText(
                            text:
                                "При регистрации вы получаете демо-доступ на 1 месяц",
                            size: 18,
                            weight: FontWeight.bold,
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
      child: CustomText(text: "Регистрация"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 20,
        ),
        _buildLogin(),
        SizedBox(
          width: 20,
        ),
        _buildSignup()
      ],
    );
  }
}
