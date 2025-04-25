import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  
  bool isLoading = true;
  String fullResponse = '''
The most recent India vs Australia match score available is from the ICC Champions Trophy 2025 1st Semi-Final held on March 4, 2025, at Dubai. India won the match by 4 wickets with 11 balls remaining. Australia scored 264 all out in 49.3 overs, and India chased it down with 267/6 in 48.1 overs[1][4][5][7].

In another recent ODI match on April 18, 2025, India scored 340/6 in 50 overs, and Australia scored 304 all out in 49.1 overs. India won that match by 36 runs[2].

For Test matches, India won the 1st Test against Australia at Perth in the 2024-25 series by 295 runs, with India scoring 150 & 487/6 declared and Australia scoring 104 & 238[3][6].

If you are looking for the current or live score of an ongoing India vs Australia match, there are no live updates available in the search results. The latest completed matches show India winning both in ODI and Test formats recently.

Citations:
[1] https://www.perplexity.ai/sports/ipl
[2] https://www.espncricinfo.com/series/icc-champions-trophy-2024-25-1459031/australia-vs-india-1st-semi-final-1466426/live-cricket-score
[3] https://sports.ndtv.com/cricket/ind-vs-aus-scorecard-live-cricket-score-australia-in-india-3-odi-series-2020-2nd-odi-inau01172020190941
[4] https://www.cricbuzz.com/live-cricket-scores/91778/aus-vs-ind-1st-test-india-tour-of-australia-2024-25
[5] https://www.espncricinfo.com/series/icc-champions-trophy-2024-25-1459031/australia-vs-india-1st-semi-final-1466426/full-scorecard
[6] https://indianexpress.com/section/sports/cricket/live-score/india-vs-australia-1st-semi-final-odi-live-score-full-scorecard-highlights-icc-champions-trophy-2025-inau03042025255195/
[7] https://www.skysports.com/cricket/australia-v-india/scorecard/c02b4119-8bee-5a0a-b691-4dc91b14899c
[8] https://sports.ndtv.com/cricket/ind-vs-aus-scorecard-live-cricket-score-icc-champions-trophy-2025-1st-semi-final-inau03042025255195
[9] https://www.cricbuzz.com/live-cricket-scores/91814/aus-vs-ind-5th-test-india-tour-of-australia-2024-25

---
Answer from Perplexity: https://www.perplexity.ai/search/what-is-the-score-of-india-vs-sr1IV312QfO9YVbSmI31cQ?utm_source=copy_output


''';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().contentStream.listen((data){
      if(isLoading) {
        fullResponse = "";
      }
      setState(() {
        fullResponse += data['data'];
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Perplexity',style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),),

        Skeletonizer(
          enabled: isLoading,
          child: Markdown(
            data: fullResponse, 
            shrinkWrap: true,
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              code: const TextStyle(
                fontSize: 16.0
              )
            ),
            ),
        )
      ],
    );
  }
}