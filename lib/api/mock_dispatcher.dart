import 'dart:io';
import 'package:flutter/services.dart';
import 'package:mock_web_server/mock_web_server.dart';

Dispatcher getMockDispatcher() {
  return (HttpRequest request) async {
    late Future<MockResponse> mockResponse;
    switch (request.uri.path) {
      case "/getQuestions":
        mockResponse = getMockResponse("assets/json/getQuestions.json");
        break;
      case "/summitQuestions":
        mockResponse = getMockResponse("assets/json/summitQuestions.json");
        break;
    }

    return mockResponse;
  };
}

Future<MockResponse> getMockResponse(String jsonFilePath) async {
  return MockResponse()
    ..httpCode = 200
    ..body = await (Platform.environment.containsKey("FLUTTER_TEST")
        ? loadJsonFromAssets(jsonFilePath)
        : rootBundle.loadString(jsonFilePath))
    ..delay = const Duration(seconds: 1);
}

Future<String> loadJsonFromAssets(String filePath) {
  return File(filePath).readAsString();
}
