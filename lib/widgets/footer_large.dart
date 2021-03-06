import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';

class FooterLarge extends StatefulWidget {
  const FooterLarge({ Key? key }) : super(key: key);

  @override
  State<FooterLarge> createState() => _FooterLargeState();
}

class _FooterLargeState extends State<FooterLarge> {
  String hoveredElement = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CustomText(
          text: "+7 (777) 77-77-77",
          size: 20,
          color: dark.withOpacity(.7),
        ),
        CustomText(
          text: "crm.io",
          size: 20,
          color: dark.withOpacity(.7),
        ),
        CustomText(
          text: "2022",
          size: 20,
          color: dark.withOpacity(.7),
        ),
        InkWell(
          onTap: () {},
          onHover: (val) {
            if (val) {
              setState(() {
                hoveredElement = "Информация";
              });
            } else {
              setState(() {
                hoveredElement = "";
              });
            }
          },
          hoverColor: Colors.transparent,
          child: CustomText(
            text: "Информация",
            color:
                (hoveredElement == "Информация") ? dark : dark.withOpacity(.7),
            textDecoration: (hoveredElement == "Информация")
                ? TextDecoration.underline
                : null,
            size: 20,
          ),
        ),
        InkWell(
          onTap: () {},
          onHover: (val) {
            if (val) {
              setState(() {
                hoveredElement = "Обратная связь";
              });
            } else {
              setState(() {
                hoveredElement = "";
              });
            }
          },
          hoverColor: Colors.transparent,
          child: CustomText(
            text: "Обратная связь",
            color: (hoveredElement == "Обратная связь")
                ? dark
                : dark.withOpacity(.7),
            textDecoration: (hoveredElement == "Обратная связь")
                ? TextDecoration.underline
                : null,
            size: 20,
          ),
        )
      ]),
    );
  }
}