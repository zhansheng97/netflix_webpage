import 'package:flutter/material.dart';
import 'package:netflix_webpage/constants.dart';
import 'package:netflix_webpage/screens/main_screen/components/use_list.dart';
import 'package:netflix_webpage/screens/side_menu/components/challenge_detail_and_button.dart';

class BigBanner extends StatefulWidget {
  const BigBanner({
    Key key,
  }) : super(key: key);

  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BigBanner> {
  final List<Movie> movies = [];
  Movie movieShowing;
  int currentShowingMovie = 1;

  getMovies() {
    for (var i = 0; i < 3; i++) {
      var getMovies = allMovies[i];
      movies.add(getMovies);
    }
    movieShowing = movies.elementAt(1);
    return movies;
  }

  @override
  void initState() {
    getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width < 560;

    return ClipRRect(
      borderRadius: BorderRadius.circular(22.0),
      child: Container(
        height: 400,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                movieShowing.image,
                fit: BoxFit.cover,
                // height: 400,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black54, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5,
                  vertical: kDefaultPadding * 1.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Text(
                            "40XP",
                            style: TextStyle(
                              color: kWhiteTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: kDefaultPadding / 2),
                        UserList(
                          users: movieShowing.actor,
                        ),
                        const SizedBox(width: kDefaultPadding / 2),
                        if (MediaQuery.of(context).size.width > 385)
                          Text(
                            "+5 friends are watching",
                            style: TextStyle(
                              color: kWhiteTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieShowing.title,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Text(
                          movieShowing.description,
                          style: TextStyle(
                            color: kWhiteTextColor,
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Row(
                          children: [
                            Row(
                              children: [
                                CustomMaterialButton(
                                  text: "Watch",
                                  onTap: () {
                                    print("Watch");
                                  },
                                  color: kRedColor,
                                  verticalPadding: 1.5,
                                  horizontalPadding: 0.75,
                                ),
                                const SizedBox(width: kDefaultPadding / 2),
                                Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.white.withOpacity(0.25),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: kWhiteTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            if (!mobile)
                              Row(
                                children: [
                                  ...List.generate(
                                    3,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: kDefaultPadding / 2),
                                      child: Material(
                                        color: index == currentShowingMovie
                                            ? movies[index]
                                                .color
                                                .withOpacity(0.4)
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              currentShowingMovie = index;
                                              movieShowing = movies[index];
                                            });
                                          },
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Container(
                                            padding: EdgeInsets.all(
                                                kDefaultPadding * 0.2),
                                            height: 50,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              child: Image.asset(
                                                movies[index].image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                        if (mobile) const SizedBox(height: kDefaultPadding),
                        if (mobile)
                          Wrap(
                            children: [
                              ...List.generate(
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      right: kDefaultPadding / 2),
                                  child: Material(
                                    color: index == currentShowingMovie
                                        ? movies[index].color.withOpacity(0.4)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentShowingMovie = index;
                                          movieShowing = movies[index];
                                        });
                                      },
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            kDefaultPadding * 0.2),
                                        height: 50,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            movies[index].image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
