import 'package:crm/layout.dart';
import 'package:crm/pages/large_home_screen.dart';
import 'package:crm/pages/small_home_screen.dart';
import 'package:crm/pages/table_example_screen.dart';
import 'package:crm/widgets/responsivewidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CRM",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
          primaryColor: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => AppLayout(),
        '/table_example': (context) => TableExample(),
        },
    );
  }
}
