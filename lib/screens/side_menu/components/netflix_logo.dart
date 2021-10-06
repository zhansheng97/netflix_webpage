import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class NetflixLogo extends StatelessWidget {
  const NetflixLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //This container is to check the RichText SizeBox
      // color: Colors.orange,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Netflix",
              style: Theme.of(context).textTheme.headline4.copyWith(
                  fontWeight: FontWeight.bold, color: kWhiteTextColor),
            ),
            TextSpan(
              text: ".",
              style: TextStyle(color: kRedColor, fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}
