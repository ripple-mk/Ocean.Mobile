part of openapi.api;

class RippleOceanServicesFeaturesResultsGetResponse {
  
  String id = null;
  
  String date = null;
  
  List<RippleOceanServicesFeaturesResultsGetResponseItem> items = [];
  RippleOceanServicesFeaturesResultsGetResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsGetResponse[id=$id, date=$date, items=$items, ]';
  }

  RippleOceanServicesFeaturesResultsGetResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    date = json['date'];
    items = (json['items'] == null) ?
      null :
      RippleOceanServicesFeaturesResultsGetResponseItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
      json['date'] = date;
      json['items'] = items;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsGetResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsGetResponse>() : json.map((value) => RippleOceanServicesFeaturesResultsGetResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsGetResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsGetResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsGetResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsGetResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsGetResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsGetResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsGetResponse.listFromJson(value);
       });
     }
     return map;
  }
}

