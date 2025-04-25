import 'package:flutter/material.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.source_outlined, color: Colors.white,),
            SizedBox(width: 8.0,),
            Text(
              "Sources", 
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),

        const SizedBox(
          height: 16.0,
          
        ),
        Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: [],
        ),
        
      ],
      
    );
  }
}