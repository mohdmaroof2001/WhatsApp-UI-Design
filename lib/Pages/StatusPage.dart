// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp/UserData/StatusData.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  // backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('images/icon.png'),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.teal[800]),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Add to my status',
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ),
            // trailing: Wrap(
            //   spacing: 15,
            //   children: [
            //     Icon(
            //       Icons.camera_alt,
            //       color: Colors.teal[800],
            //     ),
            //     Icon(
            //       Icons.edit,
            //       color: Colors.teal[800],
            //     ),
            //   ],
            // ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent Update',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context, i) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.teal[800],
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage(statusData[i].profile
                            //  ?? 'images/icon.png'
                            ),
                      ),
                    ),
                    title: Text(
                      statusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      statusData[i].time,
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.edit),
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.teal[800],
          ),
        ],
      ),
    );
  }
}
