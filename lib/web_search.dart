import 'package:flutter/material.dart';

class WebSearchbar extends StatelessWidget {
  const WebSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Color.fromARGB(255, 120, 70, 70),
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.blue,
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 0, style: BorderStyle.none),
            ),
          ),
        ),
      ),
    );
  }
}
