/// data : [{"Id":1009168,"answer":"2"},{"Id":1009169,"answer":"0"},{"Id":1009170,"answer":"2623"},{"Id":1009171,"answer":"456"},{"Id":1009172,"answer":"10340"},{"Id":1009173,"answer":"75"},{"Id":1009174,"answer":"120"},{"Id":1009175,"answer":"121"},{"Id":1009176,"answer":"26529"},{"Id":1009177,"answer":"62270"}]

class SummitQuestionResp {
  SummitQuestionResp({
    List<Data>? data,
  }) {
    _data = data;
  }

  SummitQuestionResp.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;

  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// Id : 1009168
/// answer : "2"

class Data {
  Data({
    int? id,
    String? answer,
  }) {
    _id = id;
    _answer = answer;
  }

  Data.fromJson(dynamic json) {
    _id = json['Id'];
    _answer = json['answer'];
  }
  int? _id;
  String? _answer;

  int? get id => _id;
  String? get answer => _answer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['answer'] = _answer;
    return map;
  }
}
