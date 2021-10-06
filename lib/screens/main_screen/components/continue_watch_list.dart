import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';

class ContinueWatchList extends StatefulWidget {
  @override
  _ContinueWatchListState createState() => _ContinueWatchListState();
}

class _ContinueWatchListState extends State<ContinueWatchList> {
  List<Movie> continueWatchList = [];

  List<Movie> getContinueWatchListOfMovies() {
    List<int> totalRandomNumber = [];

    while (totalRandomNumber.length < 4) {
      Random random = new Random();
      var randomGenerateNumber = random.nextInt(6);
      if (!totalRandomNumber.contains(randomGenerateNumber))
        totalRandomNumber.add(randomGenerateNumber);
    }
    print(totalRandomNumber);
    for (var i in totalRandomNumber) {
      continueWatchList.add(allMovies[i]);
    }
    return continueWatchList;
  }

  @override
  void initState() {
    getContinueWatchListOfMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double originalWidth = 1540;
    double minusTheWidth = 0;

    setState(() {
      minusTheWidth = (originalWidth - width) / 6;
      // print(minusTheWidth);
    });
    if (width > 1400) {
      return Container(
        // color: Colors.yellow,
        height: 180 - minusTheWidth,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      continueWatchList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -5,
                    right: -5,
                    bottom: -5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 2,
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0.4),
                              ),
                              Container(
                                width: 60,
                                color: kRedColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding,
                          ),
                          color: kSelectedCardColor,
                          child: Text(
                            continueWatchList[index].title,
                            style: TextStyle(
                              color: kWhiteTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else if (width > 1200 && width <= 1400) {
      return Container(
        // color: Colors.yellow,
        height: 520 - minusTheWidth * 3,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      continueWatchList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -5,
                    right: -5,
                    bottom: -5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 2,
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0.4),
                              ),
                              Container(
                                width: 60,
                                color: kRedColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding,
                          ),
                          color: kSelectedCardColor,
                          child: Text(
                            continueWatchList[index].title,
                            style: TextStyle(
                              color: kWhiteTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else if (width <= 1200 && width > 910) {
      return Container(
        // color: Colors.yellow,
        height: 810 - minusTheWidth * 4,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      continueWatchList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -5,
                    right: -5,
                    bottom: -5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 2,
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0.4),
                              ),
                              Container(
                                width: 60,
                                color: kRedColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding,
                          ),
                          color: kSelectedCardColor,
                          child: Text(
                            continueWatchList[index].title,
                            style: TextStyle(
                              color: kWhiteTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            continueWatchList.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: kDefaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            continueWatchList[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: -5,
                          right: -5,
                          bottom: -5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 2,
                                child: Stack(
                                  children: [
                                    Container(
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    Container(
                                      width: 60,
                                      color: kRedColor,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding,
                                  vertical: kDefaultPadding,
                                ),
                                color: kSelectedCardColor,
                                child: Text(
                                  continueWatchList[index].title,
                                  style: TextStyle(
                                    color: kWhiteTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      );
  }
}
