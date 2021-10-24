import 'package:flutter_test/flutter_test.dart';
import 'package:math_question/bloc/question_bloc.dart';
import 'package:math_question/models/question_repo.dart';
import 'package:mockito/mockito.dart';

class MockQuestionRepository extends Mock implements QuestionRepository {}

void main() {
  late QuestionRepository mockQuestionRepository;
  late QuestionBloc questionBloc;

  group("question bloc test", () {
    setUp(() {
      mockQuestionRepository = MockQuestionRepository();
      questionBloc = QuestionBloc(questionRepository: mockQuestionRepository);
    });

    test('initial state is correct', () {
      expect(questionBloc.state, Initial());
    });

    test('data is loaded', () {});
  });
}
