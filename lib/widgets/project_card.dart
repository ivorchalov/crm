import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';
import 'responsivewidget.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
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
        child: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Название проекта",
                size: 24,
                weight: FontWeight.bold,
              ),
              RichText(
                text: TextSpan(
                    text: "URL",
                    style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: active),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ),
              CustomText(
                text: "Активен",
                weight: FontWeight.bold,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Оплачен до:"),
                  CustomText(text: "01.01.2023"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Тарифный план:"),
                  CustomText(text: "План А"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Пользователи:"),
                  CustomText(text: "1000"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Проекты в месяц:"),
                  CustomText(text: "50"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Диск:"),
                  CustomText(text: "25GB"),
                ],
              ),
            ],
          )),
        ));
  }
}
