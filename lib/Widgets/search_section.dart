import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/Widgets/search_bar_button.dart';

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
                  SearchBarButton(
                    icon: Icons.auto_awesome_outlined,
                    text: 'Focus',
                    ),
                  const SizedBox(width: 12.0,),
                  SearchBarButton(
                    icon: Icons.add_circle_outline_outlined,
                    text: 'Attach',
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: AppColors.submitButton
                    ),
                    child: const Icon(Icons.arrow_forward_rounded, color: AppColors.background, size: 16,),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}