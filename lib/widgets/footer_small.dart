import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FooterSmall extends StatefulWidget {
  const FooterSmall({ Key? key }) : super(key: key);

  @override
  State<FooterSmall> createState() => _FooterSmallState();
}

class _FooterSmallState extends State<FooterSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
          child: AutoSizeText(
        "+7 (777) 77-77-77 crm.io 2022",
        maxLines: 1,
      )),
    );
  }
}