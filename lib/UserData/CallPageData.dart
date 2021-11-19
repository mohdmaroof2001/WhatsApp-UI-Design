// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallData {
  final String name;
  // final String message;
  final String time;
  final String profile;
  final Icon callType;
  CallData(
      {required this.name,
      // required this.message,
      required this.time,
      required this.profile,
      required this.callType});
  static Icon callrec = Icon(
    Icons.call_received,
    color: Colors.green,
    size: 18,
  );
  static Icon callmes = Icon(
    Icons.call_missed,
    color: Colors.red,
    size: 18,
  );
}

List<CallData> callData = [
  CallData(
    name: 'Mohd Maroof',
    time: '6:13 PM',
    profile: 'images/pic.jpg',
    callType: CallData.callrec,
  ),
  CallData(
    name: 'Kayam Khan',
    time: '12:13 PM',
    profile: 'images/pic.jpg',
    callType: CallData.callmes,
  ),
  CallData(
    name: 'Shihan',
    time: '10:13 AM',
    profile: 'images/pic1.jfif',
    callType: CallData.callrec,
  ),
  CallData(
    name: 'Ammi',
    time: '11:25 AM',
    profile: 'images/pic4.jfif',
    callType: CallData.callmes,
  ),
  CallData(
    name: 'Bhai',
    time: '12:13 PM',
    profile: 'images/pic3.jfif',
    callType: CallData.callrec,
  ),
  CallData(
    name: 'Bhaiu',
    time: 'Yesterday',
    profile: 'images/icon.png',
    callType: CallData.callmes,
  ),
];
