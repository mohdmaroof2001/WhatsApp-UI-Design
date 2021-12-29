import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/CameraPage.dart';
import 'package:whatsapp/Pages/TabBar.dart';
// import 'package:camera/camera.dart';   // main
import 'dart:async';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();  //main
  // cameras = await availableCameras();

  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Demo",
      home: Home(),
      // theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
    );
  }
}
