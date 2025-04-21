import 'package:flutter/material.dart';
import 'package:perplexity_clone/Widgets/search_section.dart';
import 'package:perplexity_clone/Widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // side nav bar
          SideBar(),
          Expanded(
            child: Column(
              children: [
                // search section
                Expanded(
                  child: SearchSection()
                  ),
               // footer section
               Container(
                height: 20,
               )
            
              ],
            ),
          )
        ],
      )
    );
  }
}