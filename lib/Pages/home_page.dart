import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/Widgets/search_section.dart';
import 'package:perplexity_clone/Widgets/side_bar.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
            
class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().connect();
  }
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
                  alignment: WrapAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Pro", 
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      ),

                       Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Enterprise", 
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      ),

                       Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Store", 
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      ),

                       Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Blog", 
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      ),

                       Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Careers", 
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.footerGrey,
                      ),
                      ),
                      ),

                       Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "English (English)", 
                      style: TextStyle(
                        fontSize: 12.0,
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