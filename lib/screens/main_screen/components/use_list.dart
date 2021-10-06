import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/main_screen/components/custom_small_avatar.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  const UserList({
    Key key,
    @required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 25,
      width: 65,
      child: Stack(
        children: [
          ...List.generate(
            users.length,
            (index) {
              return Positioned(
                left: 20.0 * index,
                child: CustomSmallAvatar(
                  user: users[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
