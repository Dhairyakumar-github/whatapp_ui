import 'package:flutter/material.dart';
import 'package:whatapp_ui/context_list.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 68, 113, 78),
          elevation: 0,
          title: Text("Whatapp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
          ],
          centerTitle: false,
          bottom: const TabBar(
            indicatorWeight: 3,
            unselectedLabelColor: Color.fromARGB(255, 201, 190, 190),
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: ContectList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 68, 113, 78),
          child: Icon(
            Icons.message,
          ),
        ),
      ),
    );
  }
}
