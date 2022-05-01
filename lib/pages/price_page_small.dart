import 'package:auto_size_text/auto_size_text.dart';
import 'package:crm/widgets/footer_small.dart';
import 'package:crm/widgets/menu.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/unauthorized_menu.dart';
import '../widgets/price_card.dart';
import '../widgets/top_nav.dart';

class PricePageSmall extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Center(
          child: CustomText(
        text: "Цены",
        size: 32,
        weight: FontWeight.bold,
      )),
    );
  }

  Widget _buildPriceCards() {
    return Column(
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        AutoSizeText(
          "Возможна кастомизация модулей под собственные задачи, а так же добавление новых модулей / функций и интеграций - стоимость по запросу",
          maxLines: 3,
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 10,
        ),
        CustomText(
          text: "При регистрации вы получаете демо-доступ на 1 месяц",
          size: 22,
          weight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: Menu(isVertical: true),
        ),
        body: Container(
          color: light.withOpacity(.3),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              _buildTitle(),
              _buildPriceCards(),
              _buildDescription(),
              Divider(),
              FooterSmall(),
            ],
          ),
        ));
  }
}
