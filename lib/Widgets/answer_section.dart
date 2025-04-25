import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {

  String fullResponse = 
  '''
Sure! Here’s a deeper dive into the ongoing **India vs Australia** series:

### 2024-2025 Border-Gavaskar Trophy – 5th Test

#### Current Match Status:
- **Location:** Sydney Cricket Ground
- **India’s Second Innings:** 487/6 (134.3 overs)
    - **Top Scorers:**
        - **Yashasvi Jaiswal** - 161 runs
        - **Virat Kohli** - 100 runs
        - **KL Rahul** - 77 runs
    - **Notable Contributions:** India has played some solid cricket in their second innings, with Kohli and Jaiswal forming an excellent partnership, and Rahul providing support in the middle order.
  
- **Australia’s First Innings:** 181 runs all out (51 overs)
    - **Mohammed Siraj** was the star for India with the ball, taking **5 wickets**, a match-changing performance that put India firmly on top. 

- **Australia’s Second Innings:** 39/4 (11.5 overs)
    - Australia is in deep trouble in their second innings, with a top-order collapse. India’s bowlers, led by Siraj and supported by Ravichandran Ashwin and Ravindra Jadeja, have been in full control.

#### Key Performances in the Series:
- **India’s Batting:**
    - **Virat Kohli** has been in top form, proving his worth as one of the world’s best batsmen across formats. His century in this Test is just one of the many key performances from him in the series.
    - **Rohit Sharma** has also contributed heavily with the bat, scoring crucial fifties and building strong partnerships with other top-order batsmen.

- **Australia’s Batting:**
    - Australia’s top-order struggles have been a major issue in the series. Players like **David Warner**, **Marnus Labuschagne**, and **Steven Smith** have struggled to adapt to the conditions.
    - **Usman Khawaja** has been one of the more consistent performers, but he’s often been left to carry the burden.

- **India’s Bowling:**
    - India has displayed excellent teamwork in the bowling department, with **Siraj** and **Ashwin** being the key wicket-takers. **Jadeja** has been invaluable as well, providing control and taking key wickets in the middle overs.
  
- **Australia’s Bowling:**
    - **Mitchell Starc** and **Pat Cummins** have been Australia’s leading bowlers. Starc’s pace and aggression have been essential, but they haven’t been able to get India out quickly enough in this Test match.

### Recent Match Highlights:
1. **Day 1:** Australia won the toss and chose to bat first. They were dismissed for a disappointing 181. India’s bowlers were relentless, with Siraj claiming a five-wicket haul and Ashwin and Jadeja taking crucial middle-order wickets.
2. **Day 2:** India started their innings with a steady approach. Jaiswal and Kohli stitched together a brilliant partnership, with Jaiswal reaching a remarkable century. India finished the day on a strong note with a lead that looked quite comfortable.
3. **Day 3 (Ongoing):** Australia’s second innings has been a nightmare so far. They have lost four early wickets, including key players like **Smith** and **Warner**, leaving them on the backfoot. India’s bowlers are in full control and seem to be heading for a dominant win in this Test.

### Key Moments of the Series So Far:
- **India’s Dominance:** India has outclassed Australia in most of the series, with dominant performances at home, particularly in the 4th and 5th Tests. Their consistency in all departments – batting, bowling, and fielding – has been impressive.
  
- **Australia’s Struggles:** Despite a few good individual performances, Australia has faced significant issues, especially in their batting line-up. The lack of form from some key players has cost them dearly in this series.

### Looking Forward:
If Australia doesn't find a way to counter India’s dominant bowling attack, this could be another Test match where India takes control and wins comfortably. India will be aiming to clean up Australia's tail and secure a win that could give them an unassailable lead in the series.

This series is significant as it could impact rankings and form for the ICC World Test Championship as well. Both teams will want to gain momentum ahead of the upcoming ICC tournaments.

Let me know if you’d like more detailed analysis or updates on specific players!
''';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Perplexity',style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),),

        Markdown(
          data: fullResponse, 
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(ThemeData.dark()).copyWith(
            codeblockDecoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10.0)
            )
          ),
          )
      ],
    );
  }
}