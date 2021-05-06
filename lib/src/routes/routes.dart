import 'package:flutter_exam2/src/pages/login_page.dart';
import 'package:flutter_exam2/src/pages/home_page.dart';
import 'package:flutter_exam2/src/pages/buttonA_page.dart';
import 'package:flutter_exam2/src/pages/buttonB_page.dart';
import 'package:flutter_exam2/src/pages/buttonC_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    '/home': (BuildContext context) => HomePage(),
    '/buttonA': (BuildContext context) => ButtonAPage(),
    '/buttonB': (BuildContext context) => ButtonBPage(),
    '/buttonC': (BuildContext context) => ButtonCPage(),
  };
}
