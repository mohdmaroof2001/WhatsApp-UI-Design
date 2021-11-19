// ignore_for_file: file_names, prefer_const_constructors, unused_element, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/UserData/UserAllData.dart';

class ChatingPage extends StatefulWidget {
  UserData Data;
  ChatingPage({Key? key, required this.Data}) : super(key: key);

  @override
  _ChatingPageState createState() => _ChatingPageState(Data);
}

class _ChatingPageState extends State<ChatingPage> {
  UserData Data;
  _ChatingPageState(this.Data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -14,
        backgroundColor: Colors.teal[800],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(Data.profile),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Data.name),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "online",
                  style: TextStyle(color: Colors.grey[500], fontSize: 14),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background1.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(3),
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: SizedBox(
                            height: 55,
                            child: TextField(
                              style: TextStyle(fontSize: 18),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50)),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.emoji_emotions_outlined,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  suffixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.attach_file_sharp,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.camera_alt,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                  hintText: 'Message'),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.teal[800],
                        maxRadius: 24,
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
