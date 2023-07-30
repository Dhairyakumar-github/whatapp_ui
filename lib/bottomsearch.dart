import 'package:flutter/material.dart';

class BottomSearchbar extends StatefulWidget {
  const BottomSearchbar({super.key});

  @override
  State<BottomSearchbar> createState() => _BottomSearchbarState();
}

class _BottomSearchbarState extends State<BottomSearchbar> {
  @override
  Widget build(BuildContext context) {
    var input = TextEditingController();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 36, 77, 36)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.attach_file,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: input,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                  ),
                  fillColor: const Color.fromARGB(255, 61, 99, 62),
                  hintText: "Type a message",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.mic_none_outlined,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
