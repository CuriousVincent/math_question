import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  static final ApiClient _apiClient = ApiClient._internal();

  factory ApiClient() {
    return _apiClient;
  }

  late Dio _dio;

  ApiClient._internal() {
    _dio = Dio();
    final dioAdapter = DioAdapter(dio: _dio);
    const path = 'https://example.com';
    _dio.options.baseUrl = path;
    getQuestions(dioAdapter, path);
    summitQuestions(dioAdapter, path);
  }

  Future<Response> request(String endpoint) async {
    return await _dio.get(_dio.options.baseUrl + endpoint);
  }

  void getQuestions(DioAdapter dioAdapter, String path) {
    dioAdapter.onGet(
      path + "/getQuestions",
      (server) => server.reply(200, {
        "questions": [
          {"id": 1009168, "question": "1+1=", "difficulty": 1},
          {"id": 1009169, "question": "1-1=", "difficulty": 1},
          {"id": 1009170, "question": "167+2456=", "difficulty": 2},
          {"id": 1009171, "question": "690-234=", "difficulty": 2},
          {"id": 1009172, "question": "470*22=", "difficulty": 3},
          {"id": 1009173, "question": "1725/23=", "difficulty": 3},
          {"id": 1009174, "question": "100+1*20=", "difficulty": 4},
          {"id": 1009175, "question": "100*20+1=", "difficulty": 4},
          {"id": 1009176, "question": "239*555/5=", "difficulty": 5},
          {"id": 1009177, "question": "390/3*479=", "difficulty": 5}
        ]
      }),
    );
  }

  void summitQuestions(DioAdapter dioAdapter, String path) {
    dioAdapter.onGet(
      path + "/summitQuestions",
      (server) => server.reply(200, {
        "data": [
          {"Id": 1009168, "answer": "2"},
          {"Id": 1009169, "answer": "0"},
          {"Id": 1009170, "answer": "2623"},
          {"Id": 1009171, "answer": "456"},
          {"Id": 1009172, "answer": "10340"},
          {"Id": 1009173, "answer": "75"},
          {"Id": 1009174, "answer": "120"},
          {"Id": 1009175, "answer": "121"},
          {"Id": 1009176, "answer": "26529"},
          {"Id": 1009177, "answer": "62270"}
        ]
      }),
    );
  }
}
