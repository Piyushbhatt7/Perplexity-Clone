import 'package:flutter/material.dart';
import 'package:perplexity_clone/Pages/home_page.dart';
import 'package:perplexity_clone/Theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: HomePage(),
    );
  }
}
