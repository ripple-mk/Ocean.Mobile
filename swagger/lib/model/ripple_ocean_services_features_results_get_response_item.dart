part of openapi.api;

class RippleOceanServicesFeaturesResultsGetResponseItem {
  
  String name = null;
  
  int value = null;
  
  int percent = null;
  
  String description = null;
  RippleOceanServicesFeaturesResultsGetResponseItem();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsGetResponseItem[name=$name, value=$value, percent=$percent, description=$description, ]';
  }

  RippleOceanServicesFeaturesResultsGetResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    value = json['value'];
    percent = json['percent'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    if (percent != null)
      json['percent'] = percent;
      json['description'] = description;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsGetResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsGetResponseItem>() : json.map((value) => RippleOceanServicesFeaturesResultsGetResponseItem.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsGetResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsGetResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsGetResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsGetResponseItem-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsGetResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsGetResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsGetResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

