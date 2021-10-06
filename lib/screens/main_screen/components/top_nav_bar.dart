import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/side_menu/components/netflix_logo.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (MediaQuery.of(context).size.width <= 890)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: kWhiteTextColor,
                  ),
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              NetflixLogo(),
            ],
          ),
        if (MediaQuery.of(context).size.width > 890)
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
                size: 16,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kGreyTextColor,
                size: 16,
              ),
              const SizedBox(width: kDefaultPadding),
            ],
          ),
        if (MediaQuery.of(context).size.width > 960)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
              ),
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: kGreyTextColor,
                ),
                const SizedBox(width: kDefaultPadding / 2),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: kGreyTextColor),
                    decoration: InputDecoration(
                      hintText: "Search...",
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(color: kGreyTextColor),
                    ),
                  ),
                ),
                Icon(
                  Icons.mic,
                  color: kGreyTextColor,
                ),
              ],
            ),
          ),
        Spacer(),
        if (MediaQuery.of(context).size.width <= 890 &&
            MediaQuery.of(context).size.width > 495)
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {},
                  color: kWhiteTextColor,
                ),
                const SizedBox(width: kDefaultPadding / 4),
                IconButton(
                  icon: Icon(Icons.message_outlined),
                  onPressed: () {},
                  color: kWhiteTextColor,
                ),
                const SizedBox(width: kDefaultPadding / 2),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: kRedColor),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      "assets/images/user8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: kDefaultPadding / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ramona F.",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Level 12",
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (MediaQuery.of(context).size.width >= 890)
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
                color: kWhiteTextColor,
              ),
              const SizedBox(width: kDefaultPadding / 4),
              IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {},
                color: kWhiteTextColor,
              ),
              const SizedBox(width: kDefaultPadding / 2),
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(color: kRedColor),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    "assets/images/user8.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: kDefaultPadding / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ramona F.",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: kWhiteTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Level 12",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
