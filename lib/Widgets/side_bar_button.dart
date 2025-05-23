import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SideBarButton({super.key, required this.isCollapsed, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
                  child: Icon(
                  icon,
                   color: AppColors.iconGrey, 
                   size: 22,
                   ),
                ),
                isCollapsed ? 
                const SizedBox()
                : Text(text, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),)
              ],
            );
  }
}