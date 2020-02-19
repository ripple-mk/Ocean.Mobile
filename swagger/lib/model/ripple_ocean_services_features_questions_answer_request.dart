part of openapi.api;

class RippleOceanServicesFeaturesQuestionsAnswerRequest {
  
  String resultId = null;
  
  int value = null;
  
  String questionId = null;
  RippleOceanServicesFeaturesQuestionsAnswerRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesQuestionsAnswerRequest[resultId=$resultId, value=$value, questionId=$questionId, ]';
  }

  RippleOceanServicesFeaturesQuestionsAnswerRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resultId = json['resultId'];
    value = json['value'];
    questionId = json['questionId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resultId != null)
      json['resultId'] = resultId;
    if (value != null)
      json['value'] = value;
    if (questionId != null)
      json['questionId'] = questionId;
    return json;
  }

  static List<RippleOceanServicesFeaturesQuestionsAnswerRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesQuestionsAnswerRequest>() : json.map((value) => RippleOceanServicesFeaturesQuestionsAnswerRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesQuestionsAnswerRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesQuestionsAnswerRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesQuestionsAnswerRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesQuestionsAnswerRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesQuestionsAnswerRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesQuestionsAnswerRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesQuestionsAnswerRequest.listFromJson(value);
       });
     }
     return map;
  }
}

