// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/ChatingPage.dart';
import 'package:whatsapp/UserData/UserAllData.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: chateData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  // backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage(chateData[i].profile
                      //  ?? 'images/icon.png'
                      ),
                ),
                title: Text(
                  chateData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    // Icon(
                    //   Icons.done_all,
                    //   size: 20,
                    //   color: Colors.black54,
                    // ),
                    Container(
                      child: chateData[i].revTick,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      chateData[i].message,
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ],
                ),
                trailing: Text(
                  chateData[i].time,
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatingPage(Data: chateData[i])));
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Colors.teal[800],
      ),
    );
  }
}
