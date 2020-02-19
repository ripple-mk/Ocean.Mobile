part of openapi.api;

class RippleOceanServicesFeaturesResultsStartResponseQuestion {
  
  String id = null;
  
  String text = null;
  RippleOceanServicesFeaturesResultsStartResponseQuestion();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsStartResponseQuestion[id=$id, text=$text, ]';
  }

  RippleOceanServicesFeaturesResultsStartResponseQuestion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['text'] = text;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsStartResponseQuestion> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsStartResponseQuestion>() : json.map((value) => RippleOceanServicesFeaturesResultsStartResponseQuestion.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsStartResponseQuestion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsStartResponseQuestion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsStartResponseQuestion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsStartResponseQuestion-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsStartResponseQuestion>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsStartResponseQuestion>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsStartResponseQuestion.listFromJson(value);
       });
     }
     return map;
  }
}

