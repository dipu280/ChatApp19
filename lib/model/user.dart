import 'package:flutter/animation.dart';

class User {
  num id;
  String firstame;
  String lastName;
  String iconUrl;
  Color bgColor;

  User(
    this.id,
    this.firstame,
    this.lastName,
    this.iconUrl,
    this.bgColor,
  );

  static List<User> generatedUser() {
    return [
      User(0, "Dipu", "Chandra ray", "images/d1.jpg",
          Color.fromARGB(247, 244, 93, 184)),
      User(1, "Mithun", "Chandra ray", "images/d2.jpg",
          Color.fromARGB(247, 113, 91, 187)),
      User(2, "Anik", "Chandra ray", "images/d3.jpg",
          Color.fromARGB(247, 214, 244, 93)),
      User(3, "Akash", "Chandra ray", "images/d4.jpg",
          Color.fromARGB(247, 93, 244, 113)),
      User(4, "Mika", "Chandra ray", "images/d5.jpg",
          Color.fromARGB(247, 215, 88, 83)),
      User(5, "Dola", "Chandra ray", "images/d6.jpg",
          Color.fromARGB(247, 78, 104, 249)),
      User(6, "Bappi", "Chandra ray", "images/d7.jpg",
          Color.fromARGB(247, 244, 93, 184)),
      User(7, "Hamba", "Chandra ray", "images/d11.jpg",
          Color.fromARGB(247, 205, 243, 14)),
      User(8, "Dipu", "Chandra ray", "images/d9.jpg",
          Color.fromARGB(247, 68, 181, 209)),
      User(9, "Miithun", "Chandra ray", "images/d10.jpg",
          Color.fromARGB(247, 225, 69, 210)),
    ];
  }
}
