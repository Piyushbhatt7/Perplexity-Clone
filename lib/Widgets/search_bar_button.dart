import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButton({super.key, required this.icon, required this.text});

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: isHovered ? AppColors.proButton : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(widget.icon, color: AppColors.iconGrey, size: 20.0,),
            const SizedBox(width: 8.0,),
            Text(widget.text, style: TextStyle(
              color: AppColors.textGrey,
            ),)
          ],
        ),
      ),
    );
  }
}