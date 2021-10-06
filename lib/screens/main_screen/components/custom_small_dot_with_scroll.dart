import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class CustomLineWithSmallDotScroll extends StatelessWidget {
  const CustomLineWithSmallDotScroll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 200,
      // color: Colors.blue,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 3,
              width: double.infinity,
              color: Color(0xFF2C2D35),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: kDefaultPadding),
              height: 15,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: Color(0xFF707287),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
