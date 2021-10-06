import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/main_screen/components/use_list.dart';

class PartyList extends StatefulWidget {
  const PartyList({
    Key key,
  }) : super(key: key);

  @override
  _PartyListState createState() => _PartyListState();
}

class _PartyListState extends State<PartyList> {
  List<Movie> partiesMoviesList = [];

  List<Movie> generatePartiesListOfMovies() {
    List<int> totalRandomNumber = [];

    while (totalRandomNumber.length < 4) {
      Random random = new Random();
      var randomGenerateNumber = random.nextInt(6);
      if (!totalRandomNumber.contains(randomGenerateNumber))
        totalRandomNumber.add(randomGenerateNumber);
    }
    print(totalRandomNumber);
    for (var i in totalRandomNumber) {
      partiesMoviesList.add(allMovies[i]);
    }
    return partiesMoviesList;
  }

  @override
  void initState() {
    generatePartiesListOfMovies();
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

    return LayoutBuilder(
      builder: (context, constraints) {
        // print(constraints.maxWidth);

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
                return Material(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      // height: 150,
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  partiesMoviesList[index].image,
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Spacer(),
                              UserList(users: partiesMoviesList[index].actor),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                partiesMoviesList[index].title,
                                style: TextStyle(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                partiesMoviesList[index].description,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                return Material(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      // height: 150,
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  partiesMoviesList[index].image,
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Spacer(),
                              UserList(users: partiesMoviesList[index].actor),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                partiesMoviesList[index].title,
                                style: TextStyle(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                partiesMoviesList[index].description,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                return Material(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      // height: 150,
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  partiesMoviesList[index].image,
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Spacer(),
                              UserList(users: partiesMoviesList[index].actor),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                partiesMoviesList[index].title,
                                style: TextStyle(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                partiesMoviesList[index].description,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(partiesMoviesList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: kDefaultPadding),
                  child: Material(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    partiesMoviesList[index].image,
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Spacer(),
                                UserList(users: partiesMoviesList[index].actor),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  partiesMoviesList[index].title,
                                  style: TextStyle(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  partiesMoviesList[index].description,
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          );
      },
    );
  }
}
