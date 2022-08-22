import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/portfolio.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  static const Map<int, Color> color = {
    50: Color.fromRGBO(232, 189, 249, .1),
    100: Color.fromRGBO(232, 189, 249, .2),
    200: Color.fromRGBO(232, 189, 249, .3),
    300: Color.fromRGBO(232, 189, 249, .4),
    400: Color.fromRGBO(232, 189, 249, .5),
    500: Color.fromRGBO(232, 189, 249, .6),
    600: Color.fromRGBO(232, 189, 249, .7),
    700: Color.fromRGBO(232, 189, 249, .8),
    800: Color.fromRGBO(232, 189, 249, .9),
    900: Color.fromRGBO(232, 189, 249, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: text2,
          ),
        ),
        // fontFamily: 'Kanit',
        primarySwatch: const MaterialColor(0xFF191923, color),
      ),
      home: PortFolio(),
    );
  }
}
