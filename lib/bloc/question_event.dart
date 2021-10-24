part of 'question_bloc.dart';

@freezed
abstract class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.loadQuestions() = LoadQuestions;
  const factory QuestionEvent.summitQuestion({required List<String> ans}) =
      SummitQuestion;
}
