part of openapi.api;

class RippleOceanServicesFeaturesResultsContinueResponseQuestion {
  
  String id = null;
  
  String text = null;
  
  int value = null;
  RippleOceanServicesFeaturesResultsContinueResponseQuestion();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsContinueResponseQuestion[id=$id, text=$text, value=$value, ]';
  }

  RippleOceanServicesFeaturesResultsContinueResponseQuestion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['text'] = text;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsContinueResponseQuestion> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsContinueResponseQuestion>() : json.map((value) => RippleOceanServicesFeaturesResultsContinueResponseQuestion.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsContinueResponseQuestion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsContinueResponseQuestion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsContinueResponseQuestion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsContinueResponseQuestion-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsContinueResponseQuestion>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsContinueResponseQuestion>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsContinueResponseQuestion.listFromJson(value);
       });
     }
     return map;
  }
}

