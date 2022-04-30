import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/neumorphismbutton.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatefulWidget {
  final String title;
  final double price;

  const PriceCard({Key? key, required this.title, required this.price})
      : super(key: key);

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width * 0.2,
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 1.1
          : MediaQuery.of(context).size.height * 0.8,
      decoration:
          BoxDecoration(color: light, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(child: CustomText(text: "Some image here")),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          CustomText(
            text: widget.title,
            size: 24,
            weight: FontWeight.bold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Пользователи"),
              CustomText(text: "1"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            text: "${widget.price.toString()} RUB",
            size: 24,
            weight: FontWeight.bold,
          ),
          CustomText(
            text: "За месяц использования",
            size: 12,
            color: lightGrey,
          ),
          SizedBox(
            height: 20,
          ),
          NeumorphismButton(
              width: MediaQuery.of(context).size.width * 0.8,
              child: CustomText(
                text: "Подключиться",
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
