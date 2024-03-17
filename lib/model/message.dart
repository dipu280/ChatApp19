import 'package:day19/model/user.dart';
import 'package:flutter/material.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], "Good night", "12:12"),
      Message(users[1], "Poca manus", "12:12"),
      Message(users[2], "Good night", "12:12"),
      Message(users[3], " Poca manus", "12:12"),
      Message(users[4], "Good night", "12:12"),
      Message(users[5], "Code e sob pes", "12:12"),
      Message(users[6], "Good night", "12:12"),
      Message(users[7], "Good night", "12:12"),
      Message(users[8], "Good night", "12:12"),
      Message(users[9], "Good night", "12:12"),
    ];
  }

  List<Message> generatedMessageFormUser() {
    return [
      Message(users[0], "Hi tuntuni", "12:12"),
      Message(me, "Poca manus", "12:12"),
      Message(users[2], "I love my country", "12:12"),
      Message(users[3], " Poca manus", "12:12"),
      Message(users[4], "Bangladesh is\n a small country", "12:12"),
      Message(me, "Code e sob pes", "12:12"),
    ];
  }
}

var users = User.generatedUser();
var me = User(0, "Dipu", "chandra ray", "images/a1.jpg", Colors.white70);
