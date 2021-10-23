import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_question/di/injection.dart';
import 'package:math_question/models/get_questions_resp.dart';
import 'package:math_question/ui/question_page.dart';

void main() {
  initGetIt();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ViewPager",
      theme: ThemeData(primaryColor: Colors.blue),
      home: QuestionPage(),
    );
  }
}
