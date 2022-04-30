// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:crm/widgets/price_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({Key? key}) : super(key: key);

  Widget _buildFooter(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
          child: AutoSizeText(
        "+7 (777) 77-77-77 crm.io 2022",
        maxLines: 1,
      )),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: light.withOpacity(.3),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildTitle(context),
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
          Container(
            height: 500,
          ),
          Divider(),
          _buildFooter(context)
        ],
      ),
    );
  }
}
