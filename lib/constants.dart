import 'package:flutter/material.dart';

const kDarkBackgroundColor = Color(0xFF212229);
const kRightBarBlackColor = Color(0xFF131418);
const kButtonColor = Color(0xFF2C2D35);
const kDarkCardColor = Color(0xFF1E1F25);
const kSelectedCardColor = Color(0xFF25262D);
const kBorderColor = Color(0xFF484A58);
const kWhiteTextColor = Color(0xFFF5F6FF);
const kGreyTextColor = Color(0xFF696C80);
const kRedColor = Color(0xFFD81F26);

const kDefaultPadding = 20.0;

class User {
  final String image;
  final bool isOnline;

  User({this.image, this.isOnline = false});
}

List<User> allUsers = [
  User(image: "assets/images/user1.jpg", isOnline: true),
  User(image: "assets/images/user2.jpg", isOnline: true),
  User(image: "assets/images/user3.jpg", isOnline: true),
  User(image: "assets/images/user4.jpg"),
  User(image: "assets/images/user5.jpg", isOnline: true),
  User(image: "assets/images/user6.jpg"),
  User(image: "assets/images/user7.jpg"),
];

class Movie {
  final String image;
  final String title;
  final Color color;
  final String description;
  final List<User> actor;

  Movie({
    @required this.image,
    @required this.title,
    @required this.color,
    @required this.description,
    @required this.actor,
  });
}

List<Movie> allMovies = [
  Movie(
    image: "assets/images/cadaver.jpg",
    title: "Cadaver",
    color: Color(0xFF3A3232),
    description: "Horror marathon!",
    actor: [
      User(image: "assets/images/user2.jpg"),
      User(image: "assets/images/user6.jpg"),
      User(image: "assets/images/user9.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/bladerunner.png",
    title: "Bladerunner 2049",
    color: Color(0xFFD4641E),
    description: "Sci fi binge",
    actor: [
      User(image: "assets/images/user1.jpg"),
      User(image: "assets/images/user5.jpg"),
      User(image: "assets/images/user8.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/monsters.jpg",
    title: "Monster Inc.",
    color: Color(0xFF2996D6),
    description: "Don't make me grow up",
    actor: [
      User(image: "assets/images/user2.jpg"),
      User(image: "assets/images/user4.jpg"),
      User(image: "assets/images/user5.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/el_camino.jpg",
    title: "El Camino",
    color: kRedColor,
    description: "A Breadking Bad Movie",
    actor: [
      User(image: "assets/images/user2.jpg"),
      User(image: "assets/images/user4.jpg"),
      User(image: "assets/images/user5.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/cadaver.jpg",
    title: "Hauting of Hill House",
    color: Color(0xFF89A3A7),
    description: "Horror marathon!",
    actor: [
      User(image: "assets/images/user2.jpg"),
      User(image: "assets/images/user1.jpg"),
      User(image: "assets/images/user4.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/ratched.jpg",
    title: "Ratched",
    color: Color(0xFF072D22),
    description: "Horror movies, do you dare",
    actor: [
      User(image: "assets/images/user3.jpg"),
      User(image: "assets/images/user4.jpg"),
      User(image: "assets/images/user6.jpg"),
    ],
  ),
  Movie(
    image: "assets/images/stranger_things.jpg",
    title: "Stranger Things",
    color: Color(0xFFCAB8B0),
    description: "We were on a break!",
    actor: [
      User(image: "assets/images/user3.jpg"),
      User(image: "assets/images/user4.jpg"),
      User(image: "assets/images/user6.jpg"),
    ],
  ),
];
