part of 'question_bloc.dart';

@freezed
abstract class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = Initial;
  const factory QuestionState.initialDataLoad() = InitialQuestionLoaded;
  const factory QuestionState.summit(int res) = Summit;
}
