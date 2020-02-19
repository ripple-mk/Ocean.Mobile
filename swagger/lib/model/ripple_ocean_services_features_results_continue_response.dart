part of openapi.api;

class RippleOceanServicesFeaturesResultsContinueResponse {
  
  List<RippleOceanServicesFeaturesResultsContinueResponseQuestion> questions = [];
  RippleOceanServicesFeaturesResultsContinueResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsContinueResponse[questions=$questions, ]';
  }

  RippleOceanServicesFeaturesResultsContinueResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    questions = (json['questions'] == null) ?
      null :
      RippleOceanServicesFeaturesResultsContinueResponseQuestion.listFromJson(json['questions']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['questions'] = questions;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsContinueResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsContinueResponse>() : json.map((value) => RippleOceanServicesFeaturesResultsContinueResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsContinueResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsContinueResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsContinueResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsContinueResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsContinueResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsContinueResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsContinueResponse.listFromJson(value);
       });
     }
     return map;
  }
}

