// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/CallPage.dart';
import 'package:whatsapp/Pages/CameraPage.dart';
import 'package:whatsapp/Pages/ChatScreen.dart';
import 'package:whatsapp/Pages/StatusPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 21),
        ),
        backgroundColor: Colors.teal[800],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              child: Container(
                child: Icon(Icons.camera_alt),
              ),
            ),
            Tab(child: Text('CHATS', style: TextStyle(fontSize: 18))),
            Tab(child: Text('STATUS', style: TextStyle(fontSize: 18))),
            Tab(child: Text('CALLS', style: TextStyle(fontSize: 18))),
          ],
          indicatorColor: Colors.white,
          // indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 5,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          CameraPage(),
          ChatScreen(),
          StatusPage(),
          CallPage(),
        ],
      ),
      // floatingActionButton: FAB()
    );
  }

  // FAB() {
  //   if (_controller.index == 1) {
  //     return FloatingActionButton(
  //       onPressed: () {},
  //       child: Icon(
  //         Icons.message,
  //         color: Colors.white,
  //       ),
  //       backgroundColor: Colors.teal[800],
  //     );
  //   }
  //   if (_controller.index == 2) {
  //     return FloatingActionButton(
  //       onPressed: () {},
  //       child: Icon(
  //         Icons.camera_alt,
  //         color: Colors.white,
  //       ),
  //       backgroundColor: Colors.teal[800],
  //     );
  //   }
  //   if (_controller.index == 3) {
  //     return FloatingActionButton(
  //       onPressed: () {},
  //       child: Icon(
  //         Icons.call,
  //         color: Colors.white,
  //       ),
  //       backgroundColor: Colors.teal[800],
  //     );
  //   }
  // }
}
