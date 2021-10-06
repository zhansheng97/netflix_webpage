import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    @required this.item,
    this.isSelected = false,
    @required this.onTap,
  }) : super(key: key);

  final Map<String, Object> item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          hoverColor: Theme.of(context).splashColor,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                    color: isSelected ? kRedColor : Colors.transparent,
                    width: kDefaultPadding / 4),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            // height: 60,
            child: Row(
              children: [
                const SizedBox(width: 36),
                Icon(
                  item["icon"],
                  color: isSelected ? kWhiteTextColor : kGreyTextColor,
                ),
                const SizedBox(width: kDefaultPadding),
                Text(
                  item["title"],
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: isSelected ? kWhiteTextColor : kGreyTextColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
