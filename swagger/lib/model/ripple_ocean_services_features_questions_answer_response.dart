part of openapi.api;

class RippleOceanServicesFeaturesQuestionsAnswerResponse {
  
  String id = null;
  RippleOceanServicesFeaturesQuestionsAnswerResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesQuestionsAnswerResponse[id=$id, ]';
  }

  RippleOceanServicesFeaturesQuestionsAnswerResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<RippleOceanServicesFeaturesQuestionsAnswerResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesQuestionsAnswerResponse>() : json.map((value) => RippleOceanServicesFeaturesQuestionsAnswerResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesQuestionsAnswerResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesQuestionsAnswerResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesQuestionsAnswerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesQuestionsAnswerResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesQuestionsAnswerResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesQuestionsAnswerResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesQuestionsAnswerResponse.listFromJson(value);
       });
     }
     return map;
  }
}

