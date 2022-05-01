import 'package:auto_size_text/auto_size_text.dart';
import 'package:crm/widgets/footer_large.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/price_card.dart';

class LargeHomeScreen extends StatefulWidget {
  const LargeHomeScreen({Key? key}) : super(key: key);

  @override
  State<LargeHomeScreen> createState() => _LargeHomeScreenState();
}

class _LargeHomeScreenState extends State<LargeHomeScreen> {
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

  Widget _buildTitle() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
          child: CustomText(
        text:
            "облачная платформа для контроля и управления рабочими процессами",
        size: 24,
        textAlign: TextAlign.center,
      )),
    );
  }

  Widget _buildPriceCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.09, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: AutoSizeText(
              _data[index],
              minFontSize: 24,
            ),
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
          _buildTitle(),
          Divider(),
          _buildDescription(),
          Divider(),
          _buildPriceCards(),
          Divider(),
          FooterLarge()
        ],
      ),
    );
  }
}
