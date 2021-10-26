import 'dart:convert';
import 'dart:io';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:math_question/bloc/question_bloc.dart';
import 'package:math_question/models/get_questions_resp.dart';
import 'package:math_question/models/question_repo.dart';
import 'package:math_question/models/summit_question_resp.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'question_bloc_test.mocks.dart';

@GenerateMocks([QuestionRepository])
void main() {
  late QuestionRepository mockQuestionRepository;
  late QuestionBloc questionBloc;

  group("question bloc test", () {
    setUp(() {
      mockQuestionRepository = MockQuestionRepository();
      questionBloc = QuestionBloc(questionRepository: mockQuestionRepository);
    });

    tearDown(() {
      questionBloc.close();
    });

    test('initial state is correct', () {
      expect(questionBloc.state, QuestionState.initial());
    });

    blocTest<QuestionBloc, QuestionState>('data is loaded',
        build: () {
          return questionBloc;
        },
        act: (_) async {
          final value =
              await loadJsonFromAssets('assets/json/getQuestions.json');
          final getQuestionsResp =
              GetQuestionsResp.fromJson(json.decode(value));
          when(mockQuestionRepository.getQuestions())
              .thenAnswer((_) => Future.value(getQuestionsResp));
          questionBloc.add(QuestionEvent.loadQuestions());
        },
        expect: () => [QuestionState.initialDataLoad()]);
    blocTest<QuestionBloc, QuestionState>('check answer',
        build: () {
          return questionBloc;
        },
        act: (_) async {
          final value =
              await loadJsonFromAssets('assets/json/summitQuestions.json');
          final summitQuestionResp =
              SummitQuestionResp.fromJson(json.decode(value));
          when(mockQuestionRepository.summitQuestions())
              .thenAnswer((_) => Future.value(summitQuestionResp));
          when(mockQuestionRepository
                  .checkCorrectAnswerNumber([], summitQuestionResp))
              .thenAnswer((_) => 10);
          questionBloc.add(QuestionEvent.summitQuestion(ans: []));
        },
        expect: () => [QuestionState.summit(10)]);
  });
}

Future<String> loadJsonFromAssets(String filePath) {
  return File(filePath).readAsString();
}
