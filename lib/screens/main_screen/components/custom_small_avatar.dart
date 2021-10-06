import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class CustomSmallAvatar extends StatelessWidget {
  final bool hasBorder;
  final User user;

  const CustomSmallAvatar({
    Key key,
    this.hasBorder = false,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        border: hasBorder ? Border.all(color: kDarkBackgroundColor) : null,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(user.image),
        ),
      ),
    );
  }
}
