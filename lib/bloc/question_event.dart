part of 'question_bloc.dart';

@freezed
abstract class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.loadQuestions(
      {required List<Questions> questions}) = LoadQuestions;
  const factory QuestionEvent.summitQuestion({required List<String> ans}) =
      SummitQuestion;
}
