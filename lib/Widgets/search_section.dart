import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Where knowlege begins",
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5
          ),
        ),

        const SizedBox(height: 32.0,),
        Container(
          width: 700,
          decoration: BoxDecoration(
            color: AppColors.searchBar,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search anything...',
                  hintStyle: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 16.0,
                  ),
                  border: InputBorder.none,
                ),
              ),

              Row(
                children: [
                  
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}