import 'package:auto_size_text/auto_size_text.dart';
import 'package:crm/constants/colors.dart';
import 'package:crm/widgets/custom_text.dart';
import 'package:crm/widgets/footer_large.dart';
import 'package:crm/widgets/menu.dart';
import 'package:flutter/material.dart';

import '../widgets/unauthorized_menu.dart';
import '../widgets/price_card.dart';
import '../widgets/top_nav.dart';

class PricePageLarge extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

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

  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Center(
          child: CustomText(
        text: "Цены",
        size: 32,
        weight: FontWeight.bold,
      )),
    );
  }

  Widget _buildDescription() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        AutoSizeText(
          "Возможна кастомизация модулей под собственные задачи, а так же добавление новых модулей / функций и интеграций - стоимость по запросу",
          maxLines: 1,
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: "При регистрации вы получаете демо-доступ на 1 месяц",
          size: 22,
          weight: FontWeight.bold,
        ),
        SizedBox(
          height: 40,
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
              FooterLarge(),
            ],
          ),
        ));
  }
}
