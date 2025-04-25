import 'package:flutter/material.dart';
import 'package:perplexity_clone/Widgets/answer_section.dart';
import 'package:perplexity_clone/Widgets/side_bar.dart';
import 'package:perplexity_clone/Widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          const SizedBox(width: 100.0,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(question, style: 
                    TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 24.0,),
                    // sources
                    SourcesSection(),
                    SizedBox(height: 24.0,),
                    // answer section
                    AnswerSection(),
              
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}