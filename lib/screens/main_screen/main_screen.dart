import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/main_screen/components/banner.dart';
import 'package:netflix_webpage/screens/main_screen/components/continue_watch_list.dart';
import 'package:netflix_webpage/screens/main_screen/components/custom_small_dot_with_scroll.dart';
import 'package:netflix_webpage/screens/main_screen/components/party_list.dart';
import 'package:netflix_webpage/screens/main_screen/components/top_nav_bar.dart';
import 'package:netflix_webpage/screens/right_bar/right_bar.dart';
import 'package:netflix_webpage/screens/side_menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height);
    // print(width);

    return Scaffold(
      body: Container(
        height: 744,
        width: double.infinity,
        child: Row(
          children: [
            if (MediaQuery.of(context).size.width > 890) SideMenu(),
            Expanded(
              child: Container(
                // color: Colors.yellow,
                padding: EdgeInsets.fromLTRB(
                  35,
                  kDefaultPadding,
                  kDefaultPadding * 1.5,
                  0,
                ),
                // color: Colors.yellow,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TopNavBar(),
                      const SizedBox(height: kDefaultPadding * 2),
                      BigBanner(),
                      const SizedBox(height: kDefaultPadding * 2),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Parties",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const SizedBox(width: kDefaultPadding),
                              CustomLineWithSmallDotScroll(),
                            ],
                          ),
                          const SizedBox(height: kDefaultPadding * 2),
                          PartyList(),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding * 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Continue watching",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: kDefaultPadding * 2),
                          ContinueWatchList(),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding * 2),
                    ],
                  ),
                ),
              ),
            ),
            if (MediaQuery.of(context).size.width > 1030) RightBar(),
          ],
        ),
      ),
    );
  }
}
