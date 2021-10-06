import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class RightBar extends StatelessWidget {
  const RightBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 744,
      color: kRightBarBlackColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: kDefaultPadding * 7),
            ...List.generate(
              allUsers.length + 1,
              (index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                    ),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kRedColor,
                    ),
                    child: Icon(
                      Icons.add,
                      color: kWhiteTextColor,
                    ),
                  );
                }

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(allUsers[index - 1].image),
                          ),
                        ),
                      ),
                      if (allUsers[index - 1].isOnline)
                        Positioned(
                          right: 0,
                          top: 3,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xFFB4ECB2),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: kDarkBackgroundColor,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
