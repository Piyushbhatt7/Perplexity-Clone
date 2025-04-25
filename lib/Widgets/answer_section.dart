import 'package:flutter/material.dart';

class AnswerSection extends StatelessWidget {
  const AnswerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Perplexity',style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}