import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/side_menu/components/challenge_detail_and_button.dart';
import 'package:netflix_webpage/screens/side_menu/components/menu_list.dart';
import 'package:netflix_webpage/screens/side_menu/components/netflix_logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding * 2),
              child: NetflixLogo(),
            ),
            const SizedBox(height: kDefaultPadding),
            MenuList(),
            const SizedBox(height: kDefaultPadding * 3),
            ChallengeDetailAndButton(),
          ],
        ),
      ),
    );
  }
}
