import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/side_menu/components/menu_item.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final menuList = [
    {
      "Menu": [
        {
          "index": 0,
          "title": "Browse",
          "icon": Icons.account_balance,
        },
        {
          "index": 1,
          "title": "Watchlist",
          "icon": Icons.favorite,
        },
        {
          "index": 2,
          "title": "Coming Soon",
          "icon": Icons.calendar_today,
        },
      ],
    },
    {
      "Social": [
        {
          "index": 3,
          "title": "Friends",
          "icon": Icons.nature_people,
        },
        {
          "index": 4,
          "title": "Parties",
          "icon": Icons.people_alt,
        },
      ],
    },
    {
      "General": [
        {
          "index": 5,
          "title": "Settings",
          "icon": Icons.settings,
        },
        {
          "index": 6,
          "title": "Log out",
          "icon": Icons.logout,
        },
      ],
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //----Check the menuList length ----//
    // print(menuList.length);

    return Column(
      children: [
        ...List.generate(menuList.length, (index) {
          //----Take the Key values ----//
          String title = menuList[index].keys.first;

          //----Take the List of Map of the item ----//
          List<Map<String, Object>> menuTotalItem = menuList[index][title];

          return Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding * 2),
                  child: Text(title),
                ),
                const SizedBox(height: kDefaultPadding),
                ...List.generate(menuTotalItem.length, (index) {
                  //----Take the index of the eachItem ----//
                  var indexItem = menuTotalItem[index]["index"];
                  // print(indexItem);

                  return MenuItem(
                    item: menuTotalItem[index],
                    isSelected: indexItem == currentIndex,
                    onTap: () {
                      setState(
                        () {
                          currentIndex = indexItem;
                        },
                      );
                    },
                  );
                })
              ],
            ),
          );
        }),
      ],
    );
  }
}
