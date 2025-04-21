import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      width: isCollapsed ? 64 : 128,
      color: AppColors.sideNav,
      child: Column(
        crossAxisAlignment: isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16,),
          Icon(
            Icons.auto_awesome_mosaic_rounded,
             color: AppColors.whiteColor, 
             size: 30,
             ),

             const SizedBox(height: 24.0, ),

            

            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              child: Icon(
              Icons.search,
               color: AppColors.iconGrey, 
               size: 22,
               ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              child: Icon(
              Icons.language,
               color: AppColors.iconGrey, 
               size: 22,
               ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              child: Icon(
              Icons.auto_awesome,
               color: AppColors.iconGrey, 
               size: 22,
               ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              child: Icon(
              Icons.cloud_outlined,
               color: AppColors.iconGrey, 
               size: 22,
               ),
            ),

            const Spacer(),

            GestureDetector(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
                child: Icon(
                  isCollapsed ? 
                Icons.keyboard_arrow_right : Icons.keyboard_arrow_left,
                 color: AppColors.iconGrey, 
                 size: 22,
                 ),
              ),
            ),

            const SizedBox(height: 16.0,),
        ],
      ),
    );
  }
}