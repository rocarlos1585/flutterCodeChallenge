import 'package:code_challenge_roberto_flutter/config/theme/app_theme.dart';
import 'package:code_challenge_roberto_flutter/screens/feed_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(),
      home:const FeedScreen()
    );
  }
}