import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:math_question/models/get_questions_resp.dart';
import 'package:math_question/models/question_repo.dart';

part 'question_bloc.freezed.dart';

part 'question_event.dart';

part 'question_state.dart';

@injectable
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository questionRepository;
  List<Questions> question = [];

  QuestionBloc({required this.questionRepository})
      : super(QuestionState.initial());

  @override
  Stream<QuestionState> mapEventToState(QuestionEvent event) async* {
    yield* event.when(loadQuestions: () async* {
      final response = await questionRepository.getQuestions();
      question = response.questions;
      yield const QuestionState.initialDataLoad();
    }, summitQuestion: (List<String> ans) async* {
      final resp = await questionRepository.summitQuestions();
      int count = questionRepository.checkCorrectAnswerNumber(ans, resp);
      yield QuestionState.summit(count);
    });
  }
}
