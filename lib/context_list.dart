import 'package:flutter/material.dart';
import 'package:whatapp_ui/colors.dart';
import 'package:whatapp_ui/info.dart';
import 'package:whatapp_ui/mobileChatScreen.dart';

class ContectList extends StatelessWidget {
  const ContectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SingleChildScrollView(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MobileChatScreen()));
                  },
                  child: ListTile(
                    title: Text(info[index]["name"].toString()),
                    subtitle: Text(info[index]["message"].toString()),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        info[index]["profilePic"].toString(),
                      ),
                    ),
                    trailing: Text(info[index]["time"].toString()),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
