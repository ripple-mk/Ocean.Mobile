part of openapi.api;

class RippleOceanServicesFeaturesResultsCompleteRequestAnswer {
  
  String questionId = null;
  
  int value = null;
  RippleOceanServicesFeaturesResultsCompleteRequestAnswer();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsCompleteRequestAnswer[questionId=$questionId, value=$value, ]';
  }

  RippleOceanServicesFeaturesResultsCompleteRequestAnswer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    questionId = json['questionId'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (questionId != null)
      json['questionId'] = questionId;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer>() : json.map((value) => RippleOceanServicesFeaturesResultsCompleteRequestAnswer.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsCompleteRequestAnswer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsCompleteRequestAnswer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsCompleteRequestAnswer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsCompleteRequestAnswer-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsCompleteRequestAnswer.listFromJson(value);
       });
     }
     return map;
  }
}

