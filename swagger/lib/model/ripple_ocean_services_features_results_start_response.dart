part of openapi.api;

class RippleOceanServicesFeaturesResultsStartResponse {
  
  String id = null;
  
  List<RippleOceanServicesFeaturesResultsStartResponseQuestion> questions = [];
  RippleOceanServicesFeaturesResultsStartResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsStartResponse[id=$id, questions=$questions, ]';
  }

  RippleOceanServicesFeaturesResultsStartResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    questions = (json['questions'] == null) ?
      null :
      RippleOceanServicesFeaturesResultsStartResponseQuestion.listFromJson(json['questions']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['questions'] = questions;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsStartResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsStartResponse>() : json.map((value) => RippleOceanServicesFeaturesResultsStartResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsStartResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsStartResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsStartResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsStartResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsStartResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsStartResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsStartResponse.listFromJson(value);
       });
     }
     return map;
  }
}

