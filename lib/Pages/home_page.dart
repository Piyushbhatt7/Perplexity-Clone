import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';
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
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Pro", 
                      style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      )
                  ],
                ),
               ),
            
              ],
            ),
          )
        ],
      )
    );
  }
}