import 'package:flutter/material.dart';
import 'package:perplexity_clone/Widgets/side_bar.dart';

class ChatPage extends StatefulWidget {
  final String question;
  const ChatPage({super.key, required this.question});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          const SizedBox(width: 100.0,),
          Column(
            children: [
              Text()
            ],
          )
        ],
      ),
    );
  }
}