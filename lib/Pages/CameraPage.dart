// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

// late List<CameraDescription>? cameras;

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  // late CameraController controller;
  // XFile? pictureFile;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   controller = CameraController(cameras![0], ResolutionPreset.max);
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   });
  // }

  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // if (!controller.value.isInitialized) {
    //   return Container();
    // }
    return Scaffold(
        // body: CameraPreview(controller),
        );
  }
}
