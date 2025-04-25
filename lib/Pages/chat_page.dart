import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // StreamBuilder(
  //               stream: ChatWebService().contentStream,
  //               builder: (context, snapahot)
  //               {
  //                 if(snapahot.connectionState == ConnectionState.waiting){
  //                   return const Center(
  //                     child: CircularProgressIndicator(),
  //                   );
  //                 }

  //                 fullResponse += snapahot.data?['data'] ?? '';

  //                 return Text(fullResponse);
  //               }
  //               ),
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
