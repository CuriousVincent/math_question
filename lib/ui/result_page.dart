import 'package:flutter/material.dart';
import 'package:math_question/ui/question_page.dart';

class ResultPage extends StatelessWidget {
  final int res;

  ResultPage({Key? key, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("結果"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("答對題數 $res / 10"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(),
                        ));
                  },
                  child: Text("重試")),
            ],
          ),
        ));
  }
}
