// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserData {
  final String name;
  final String message;
  final String time;
  final String profile;
  final Icon revTick;
  UserData(
      {required this.name,
      required this.message,
      required this.time,
      required this.profile,
      required this.revTick});
  static Icon blueTick = Icon(
    Icons.done_all,
    color: Colors.blue,
    size: 18,
  );
  static Icon unSeen = Icon(
    Icons.done,
    color: Colors.black45,
    size: 18,
  );
  static Icon unBlueTick = Icon(
    Icons.done_all,
    color: Colors.black45,
    size: 18,
  );
}

List<UserData> chateData = [
  UserData(
      name: 'Mohd Maroof',
      message: 'kya haal chal hai',
      time: '6:13 PM',
      profile: 'images/pic.jpg',
      revTick: UserData.blueTick),
  UserData(
      name: 'Kayam Khan',
      message: 'kal chalna hai',
      time: '12:13 PM',
      profile: 'images/pic.jpg',
      revTick: UserData.unBlueTick),
  UserData(
      name: 'Shihan',
      message: 'pessa bheje ho kya',
      time: '10:13 AM',
      profile: 'images/pic1.jfif',
      revTick: UserData.blueTick),
  UserData(
      name: 'Ammi',
      message: 'hello',
      time: '11:25 AM',
      profile: 'images/pic4.jfif',
      revTick: UserData.blueTick),
  UserData(
      name: 'Bhai',
      message: 'hiiii',
      time: '12:13 PM',
      profile: 'images/pic3.jfif',
      revTick: UserData.blueTick),
  UserData(
      name: 'Bhaiu',
      message: 'bill jama hogyi',
      time: 'Yesterday',
      profile: 'images/icon.png',
      revTick: UserData.unSeen),
  UserData(
      name: 'Danish',
      message: 'kal haal hai danish',
      time: 'Friday',
      profile: 'images/pic2.jfif',
      revTick: UserData.unSeen),
  UserData(
      name: 'Shizan',
      message: 'aao',
      time: 'Thursday',
      profile: 'images/pic1.jfif',
      revTick: UserData.unSeen),
  UserData(
      name: 'John',
      message: 'kal chalna hai',
      time: 'Wednesday',
      profile: 'images/pic3.jfif',
      revTick: UserData.unSeen),
  UserData(
      name: 'Salim',
      message: 'kal chalna hai',
      time: '01/11/21',
      profile: 'images/icon.png',
      revTick: UserData.unSeen),
];
