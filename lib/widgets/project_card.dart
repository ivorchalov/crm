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
        child: InkWell(
          onTap: () {},
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: "Название проекта",
                size: 24,
                weight: FontWeight.bold,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Тип проекта"),
                  CustomText(text: "Тип проекта"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Компания"),
                  CustomText(text: "Компания"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Домен"),
                  CustomText(text: "Домен"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "URL"),
                  CustomText(text: "URL"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Администратор"),
                  CustomText(text: "Администратор"),
                ],
              ),
            ],
          )),
        ));
  }
}
