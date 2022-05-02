import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  @override
  Widget build(BuildContext context) {
    double textFieldWidth = ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.width * 0.3
        : MediaQuery.of(context).size.width * 0.1;

    double alertWidth = ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.width * 1.0
        : MediaQuery.of(context).size.width * 0.25;

    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.width * 0.9
            : MediaQuery.of(context).size.width * 0.2,
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.8
            : MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
            color: light, borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  bool isChecked = false;
                  return StatefulBuilder(builder: ((context, setState) {
                    return AlertDialog(
                      backgroundColor: light,
                      title: Center(
                          child: CustomText(
                        text: 'Создание',
                        size: 20,
                      )),
                      content: Container(
                        width: alertWidth,
                        height: MediaQuery.of(context).size.height * 0.4,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Тип:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Введите тип проекта"),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Компания:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Введите компанию"),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Домен:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Введите домен",
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "URL:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Введите URL"),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: "Администратор",
                              weight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Логин:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Введите логин"),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Пароль:"),
                                Container(
                                  width: textFieldWidth,
                                  height: 30,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Введите пароль"),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Checkbox(
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: ResponsiveWidget.isSmallScreen(
                                            context)
                                        ? "принять условия \nпользовательского "
                                        : "принять условия пользовательского ",
                                    style: TextStyle(
                                        color: lightGrey, fontSize: 14)),
                                TextSpan(
                                    text: "соглашения",
                                    style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        color: dark),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ])),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: CustomText(
                                  text: "Закрыть",
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      isChecked ? dark : dark.withOpacity(.3),
                                ),
                                onPressed: isChecked ? () {} : null,
                                child: CustomText(
                                  text: "Создать",
                                  color: light,
                                )),
                          ],
                        )
                      ],
                    );
                  }));
                });
          },
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Создать проект",
                size: 24,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: dark),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                    child: Icon(
                  Icons.add_business,
                  size: 30,
                )),
              )
            ],
          )),
        ));
  }
}
