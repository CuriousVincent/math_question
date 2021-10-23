/// questions : [{"id":1009168,"question":"1+1=","difficulty":1},{"id":1009169,"question":"1-1=","difficulty":1},{"id":1009170,"question":"167+2456=","difficulty":2},{"id":1009171,"question":"690-234=","difficulty":2},{"id":1009172,"question":"470*22=","difficulty":3},{"id":1009173,"question":"1725/23=","difficulty":3},{"id":1009174,"question":"100+1*20=","difficulty":4},{"id":1009175,"question":"100*20+1=","difficulty":4},{"id":1009176,"question":"239*555/5=","difficulty":5},{"id":1009177,"question":"390/3*479=","difficulty":5}]

class GetQuestionsResp {
  GetQuestionsResp({
    List<Questions> questions = const [],
  }) {
    _questions = questions;
  }

  GetQuestionsResp.fromJson(dynamic json) {
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions.add(Questions.fromJson(v));
      });
    }
  }
  late List<Questions> _questions;

  List<Questions> get questions => _questions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_questions != null) {
      map['questions'] = _questions.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1009168
/// question : "1+1="
/// difficulty : 1

class Questions {
  Questions(
    int id,
    String question,
    int difficulty,
  ) {
    _id = id;
    _question = question;
    _difficulty = difficulty;
  }

  Questions.fromJson(dynamic json) {
    _id = json['id'];
    _question = json['question'];
    _difficulty = json['difficulty'];
  }
  late int _id;
  late String _question;
  late int _difficulty;

  int get id => _id;
  String get question => _question;
  int get difficulty => _difficulty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['question'] = _question;
    map['difficulty'] = _difficulty;
    return map;
  }
}
