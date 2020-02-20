part of openapi.api;

class RippleOceanServicesFeaturesResultsListResponseItem {
  
  String id = null;
  
  String name = null;
  RippleOceanServicesFeaturesResultsListResponseItem();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsListResponseItem[id=$id, name=$name, ]';
  }

  RippleOceanServicesFeaturesResultsListResponseItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['name'] = name;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsListResponseItem> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsListResponseItem>() : json.map((value) => RippleOceanServicesFeaturesResultsListResponseItem.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsListResponseItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsListResponseItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsListResponseItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsListResponseItem-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsListResponseItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsListResponseItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsListResponseItem.listFromJson(value);
       });
     }
     return map;
  }
}

