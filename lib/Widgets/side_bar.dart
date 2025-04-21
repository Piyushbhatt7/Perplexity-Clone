import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16,),
          Icon(
            Icons.auto_awesome_mosaic_sharp,
             color: AppColors.whiteColor, 
             size: 30,
             ),

             const SizedBox(height: 24.0,),

            Icon(
            Icons.add,
             color: AppColors.iconGrey, 
             size: 22,
             ),
        ],
      ),
    );
  }
}