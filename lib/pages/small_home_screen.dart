// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:crm/widgets/footer_small.dart';
import 'package:crm/widgets/price_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text.dart';

class SmallHomeScreen extends StatelessWidget {
  List<String> _data = [
    "аренда / прокат / бронирование оборудования",
    "учет оборудования / инвентаризация с использованием наклеек / штрих-кодов",
    "быстрое формирование смет / счетов / договоров / закрывающих/ любых документов",
    "база сотрудников / клиентов / контрагентов / площадок",
    "поиск персонала для проектов через отправку запросов по баз",
    "интеграция с банком",
    "стабильная работа / блокировки иностранных серверов не помешают работе работе сервиса",
    "поддержка 24/7",
    "пробный период 3 месяца",
  ];

  Widget _buildTitle(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
          child: CustomText(
        text:
            "облачная платформа для контроля и управления рабочими процессами",
        size: 18,
        textAlign: TextAlign.center,
      )),
    );
  }

  Widget _buildPriceCards() {
    return Column(
      children: [
        PriceCard(
          title: "План А",
          price: 0,
        ),
        PriceCard(
          title: "План Б",
          price: 1000,
        ),
        PriceCard(
          title: "План В",
          price: 10000,
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Container(
      decoration:
          BoxDecoration(color: light, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: CustomText(text: _data[index]),
            leading: Icon(
              Icons.circle,
              size: 15,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: light.withOpacity(.3),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildTitle(context),
          Divider(),
          _buildDescription(),
          Divider(),
          _buildPriceCards(),
          Divider(),
          FooterSmall()
        ],
      ),
    );
  }
}
