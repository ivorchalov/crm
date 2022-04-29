// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Center(
              child: CustomText(
            text:
                "облачная платформа для контроля и управления рабочими процессами",
            size: 18,
            textAlign: TextAlign.center,
          )),
        ),
        Container(
          height: 500,
        ),
        Container(
          height: 500,
        ),
        Divider(),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: AutoSizeText(
                      '+7 (777) 77-77-77',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: AutoSizeText(
                      'crm.io',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: AutoSizeText(
                      '2022',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: AutoSizeText(
                      'Информация',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Flexible(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: AutoSizeText(
                      'Обратная связь',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
