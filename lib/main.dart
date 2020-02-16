import 'package:flutter/material.dart';
import 'package:ocean_mobile/extensions/get_swatch.dart';
import 'package:ocean_mobile/features/accounts/login.dart';
import 'package:ocean_mobile/features/accounts/register.dart';
import 'package:ocean_mobile/features/test/questionnaire.dart';
import 'package:ocean_mobile/features/test/result.dart';

import 'custom_colors.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Ocean',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: MaterialColor(CustomColors.Blue.value, getSwatch(CustomColors.Blue)),
        accentColor: MaterialColor(CustomColors.Blue.value, getSwatch(CustomColors.Blue)),
        fontFamily: 'SkolaSans'
      ),
      home: Login(),
      routes: {
        "/login": (bc) => new Login(),
        "/register": (bc) => new Register(),
        "/questionnaire": (bc) => new Questionnaire(),
        "/result": (bc) => new Result()
      },
    );
  }
}
