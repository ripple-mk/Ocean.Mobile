part of openapi.api;

class RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse {
  
  String id = null;
  RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse[id=$id, ]';
  }

  RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse>() : json.map((value) => RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.listFromJson(value);
       });
     }
     return map;
  }
}

