// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:camera/camera.dart'; //main
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// late List<CameraDescription> cameras; //main

class CameraPage extends StatefulWidget {
  // const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  final ImagePicker _picker = ImagePicker();
  String? imagePath;

  // late CameraController controller;  //main
  // XFile? pictureFile;
  // @override
  // void initState() {   //main
  //   super.initState();
  //   controller = CameraController(cameras[0], ResolutionPreset.max);
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // selectImage(ImageSource.camera);
  }

  @override
  void dispose() {
    // controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (!controller.value.isInitialized) {  // main
    //   return Container();
    // }
    return Scaffold(
        body: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (imagePath != null) ...[
              Image.file(
                File(imagePath!),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 231,
                fit: BoxFit.cover,
              ),
            ],
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        selectImage(ImageSource.gallery);
                      },
                      icon: Icon(
                        Icons.image_outlined,
                        color: Colors.white,
                        size: 30,
                      )),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: IconButton(
                        onPressed: () {
                          selectImage(ImageSource.camera);
                        },
                        icon: Icon(
                          Icons.circle_sharp,
                          color: Colors.white,
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
        ),
      ],
    )
        // main
        //      Stack(
        //   children: [
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: MediaQuery.of(context).size.height,
        //       // child: CameraPreview(controller),
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Container(
        //           width: MediaQuery.of(context).size.width,
        //           height: 200,
        //           color: Colors.transparent,
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             children: [
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(
        //                     Icons.flash_off,
        //                     color: Colors.white,
        //                     size: 30,
        //                   )),
        //               SizedBox(
        //                 height: 80,
        //                 width: 80,
        //                 child: IconButton(
        //                     onPressed: () {},
        //                     icon: Icon(
        //                       Icons.circle_sharp,
        //                       color: Colors.red,
        //                       size: 80,
        //                     )),
        //               ),
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(
        //                     Icons.cameraswitch_rounded,
        //                     color: Colors.white,
        //                     size: 30,
        //                   )),
        //             ],
        //           ),
        //         ),
        //       ],
        //     )
        //   ],
        // ),
        );
  }

  selectImage(ImageSource src) async {
    final XFile? image = await _picker.pickImage(source: src);
    if (image != null) {
      print("Path ${image.path}");
      setState(() {
        imagePath = image.path;
      });
    }
  }
}
