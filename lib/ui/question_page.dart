import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:math_question/bloc/question_bloc.dart';
import 'package:math_question/di/injection.dart';
import 'package:math_question/models/get_questions_resp.dart';
import 'package:math_question/ui/result_page.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  final QuestionBloc questionBloc = getIt<QuestionBloc>();
  final PageController controller = PageController(initialPage: 0);
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  List<TextEditingController> textControllers = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    questionBloc.add(QuestionEvent.loadQuestions());
  }

  @override
  void dispose() {
    controller.dispose();
    textControllers.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => questionBloc,
        child: BlocConsumer<QuestionBloc, QuestionState>(
            listener: (context, state) {
          state.when(
              initial: () {},
              initialDataLoad: () {
                textControllers = [];
                for (int i = 0; i < questionBloc.question.length; i++) {
                  final textController = TextEditingController();
                  textControllers.add(textController);
                }
              },
              summit: (res) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(res: res),
                    ));
              });
        }, builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Column(children: [
                  Text("完成十道題目可以解鎖獎勵"),
                  DotsIndicator(
                    controller: controller,
                    itemCount: questionBloc.question.length,
                    onPageSelected: (int page) {
                      controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ]),
              ),
              body: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: getList()));
        }));
  }

  List<Widget> getList() {
    final List<Widget> items = [];
    for (int i = 0; i < questionBloc.question.length; i++) {
      items.add(page(questionBloc.question[i], i + 1, textControllers[i]));
    }
    return items;
  }

  Widget page(
      Questions questions, int index, TextEditingController textController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("編號 ${questions.id}"),
            Text("題目 $index"),
            Row(
              children: difficulty(questions.difficulty),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(questions.question),
            Container(
                width: 100,
                child: TextField(
                  controller: textController,
                  keyboardType: TextInputType.number,
                ))
          ],
        ),
        ElevatedButton(
          onPressed: () {
            if (index == questionBloc.question.length) {
              List<String> ans = [];
              textControllers.forEach((element) {
                ans.add(element.text);
              });
              questionBloc.add(QuestionEvent.summitQuestion(ans: ans));
            } else {
              controller.animateToPage(
                (controller.page?.toInt() ?? 0) + 1,
                duration: _kDuration,
                curve: _kCurve,
              );
            }
          },
          child: index == questionBloc.question.length
              ? Text("提交回答")
              : Text("下一題"),
        )
      ],
    );
  }

  List<Widget> difficulty(int difficulty) {
    final List<Widget> items = [];
    items.add(Text("難度"));

    for (int i = 0; i < difficulty; i++) {
      items.add(
        ClipPath(
          clipper: StarClipper(5),
          child: Container(
            height: 20,
            width: 20,
            color: Colors.red,
          ),
        ),
      );
    }
    for (int i = 0; i < 5 - difficulty; i++) {
      items.add(
        ClipPath(
          clipper: StarClipper(5),
          child: Container(
            height: 20,
            width: 20,
            color: Colors.grey,
          ),
        ),
      );
    }

    return items;
  }
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  final PageController controller;

  final int itemCount;

  final ValueChanged<int> onPageSelected;

  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
