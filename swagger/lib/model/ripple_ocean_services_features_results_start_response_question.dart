part of openapi.api;

class RippleOceanServicesFeaturesResultsStartResponseQuestion {
  
  String id = null;
  
  String text = null;
  
  int value = null;
  
  int position = null;
  RippleOceanServicesFeaturesResultsStartResponseQuestion();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsStartResponseQuestion[id=$id, text=$text, value=$value, position=$position, ]';
  }

  RippleOceanServicesFeaturesResultsStartResponseQuestion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    text = json['text'];
    value = json['value'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['text'] = text;
    if (value != null)
      json['value'] = value;
    if (position != null)
      json['position'] = position;
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

