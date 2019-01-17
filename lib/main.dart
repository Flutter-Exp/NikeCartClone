import 'package:flutter/material.dart';
import 'package:nikecartclone/screens/menu.dart';
import 'package:nikecartclone/screens/products.dart';
import 'package:nikecartclone/screens/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Routes
  final Map<String, WidgetBuilder> routes = {
    '/splashscreen': (BuildContext context) => SplashScreen(),
    '/menu': (BuildContext context) => Menu(),
    '/products': (BuildContext context) => Products()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: routes,
    );
  }
}
