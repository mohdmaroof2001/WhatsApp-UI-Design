// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> cameras;

class CameraPage extends StatefulWidget {
  // const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  // XFile? pictureFile;
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CameraPreview(controller),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.flash_off,
                        color: Colors.white,
                        size: 30,
                      )),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.circle_sharp,
                          color: Colors.red,
                          size: 80,
                        )),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cameraswitch_rounded,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
