import 'package:flutter/material.dart';
import 'package:whatapp_ui/bottomsearch.dart';
import 'package:whatapp_ui/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 113, 78),
        title: Text(info[0]["name"].toString()),
        // leading: CircleAvatar(
        //   // radius: 10,
        //   backgroundImage: NetworkImage(
        //     info[0]["profilePic"].toString(),
        //   ),
        // ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
            ),
          ),
          BottomSearchbar()
        ],
      ),
    );
  }
}
