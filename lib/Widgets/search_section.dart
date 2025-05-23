import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/Pages/chat_page.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/Widgets/search_bar_button.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {

  final queryController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    queryController.dispose();
  }
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
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: AppColors.searchBarBorder,
              width: 1.5,
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: queryController,
                  decoration: InputDecoration(
                    hintText: 'Search anything...',
                    hintStyle: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 16.0,
                    ),
                    border: InputBorder.none,
                    isDense: true, // 41:40
                    contentPadding: EdgeInsets.zero,
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
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

                    GestureDetector(
                      onTap: () {
                        ChatWebService().chat(queryController.text.trim());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(question: queryController.text.trim(),),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: AppColors.submitButton,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_outlined, 
                          color: AppColors.background, 
                          size: 16,
                          ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}