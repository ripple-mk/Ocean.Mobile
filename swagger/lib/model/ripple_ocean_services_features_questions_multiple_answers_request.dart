part of openapi.api;

class RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest {
  
  String resultId = null;
  RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest[resultId=$resultId, ]';
  }

  RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resultId = json['resultId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resultId != null)
      json['resultId'] = resultId;
    return json;
  }

  static List<RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest>() : json.map((value) => RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.listFromJson(value);
       });
     }
     return map;
  }
}

