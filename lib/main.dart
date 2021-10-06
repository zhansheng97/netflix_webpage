import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/main_screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFlix WebPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kDarkBackgroundColor,
        fontFamily: "Raleway",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline4: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteTextColor,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w600,
                color: kWhiteTextColor,
              ),
              bodyText2: TextStyle(color: kGreyTextColor),
              bodyText1: TextStyle(
                color: kGreyTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: MainScreen(),
    );
  }
}
