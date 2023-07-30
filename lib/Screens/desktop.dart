import 'package:flutter/material.dart';
import 'package:whatapp_ui/bottomsearch.dart';
import 'package:whatapp_ui/context_list.dart';
import 'package:whatapp_ui/web_main_searchbar.dart';
import 'package:whatapp_ui/web_profilebar.dart';
import 'package:whatapp_ui/web_search.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WebProfilebar(),
                WebSearchbar(),
                ContectList(),
                //  Text("data")
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/whatappback.jpg",
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [WebMainProfileBar(), BottomSearchbar()],
          ),
        )
      ],
    ));
  }
}
