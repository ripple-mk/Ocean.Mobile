part of openapi.api;

class RippleOceanServicesFeaturesResultsCompleteRequest {
  
  String resultId = null;
  
  List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer> answers = [];
  RippleOceanServicesFeaturesResultsCompleteRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsCompleteRequest[resultId=$resultId, answers=$answers, ]';
  }

  RippleOceanServicesFeaturesResultsCompleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resultId = json['resultId'];
    answers = (json['answers'] == null) ?
      null :
      RippleOceanServicesFeaturesResultsCompleteRequestAnswer.listFromJson(json['answers']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resultId != null)
      json['resultId'] = resultId;
      json['answers'] = answers;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsCompleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsCompleteRequest>() : json.map((value) => RippleOceanServicesFeaturesResultsCompleteRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsCompleteRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsCompleteRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsCompleteRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsCompleteRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsCompleteRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsCompleteRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsCompleteRequest.listFromJson(value);
       });
     }
     return map;
  }
}

