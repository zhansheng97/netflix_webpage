import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class ChallengeDetailAndButton extends StatelessWidget {
  const ChallengeDetailAndButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/bladerunner.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Text(
            "Popcorn Addict",
            style: TextStyle(
              color: kWhiteTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: kDefaultPadding / 4),
          Text(
            "4/6h viewing time",
            style: TextStyle(fontSize: 12.0),
          ),
          const SizedBox(height: kDefaultPadding),
          CustomMaterialButton(
            text: "View Challenge",
            onTap: () {
              print("View Challenge");
            },
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;
  final double verticalPadding;
  final double horizontalPadding;

  const CustomMaterialButton({
    Key key,
    @required this.text,
    this.color = kButtonColor,
    @required this.onTap,
    this.verticalPadding = 2,
    this.horizontalPadding = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * verticalPadding,
            vertical: kDefaultPadding * horizontalPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            text,
            style: TextStyle(color: kWhiteTextColor),
          ),
        ),
      ),
    );
  }
}
