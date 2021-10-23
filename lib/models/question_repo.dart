import 'package:injectable/injectable.dart';
import 'package:math_question/api/question_service.dart';
import 'package:math_question/models/get_questions_resp.dart';
import 'package:math_question/models/summit_question_resp.dart';

@lazySingleton
class QuestionRepository {
  final QuestionService questionService;

  QuestionRepository(this.questionService);

  Future<GetQuestionsResp> getQuestions() async {
    final response = await questionService.getQuestions();
    return GetQuestionsResp.fromJson(response.data);
  }

  Future<SummitQuestionResp> summitQuestions() async {
    final response = await questionService.summitQuestions();
    return SummitQuestionResp.fromJson(response.data);
  }
}
