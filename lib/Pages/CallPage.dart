// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp/UserData/CallPageData.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                    // backgroundColor: Colors.yellow,
                    backgroundImage: AssetImage(callData[i].profile
                        //  ?? 'images/icon.png'
                        ),
                  ),
                  title: Text(
                    callData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Container(
                        child: callData[i].callType,
                      ),
                      Text(
                        callData[i].time,
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.teal[800],
                  )
                  // onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => ChatingPage()));
                  // },
                  )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
        backgroundColor: Colors.teal[800],
      ),
    );
  }
}
