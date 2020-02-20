part of openapi.api;

class RippleOceanServicesFeaturesResultsListResponse {
  
  List<RippleOceanServicesFeaturesResultsListResponseItem> items = [];
  RippleOceanServicesFeaturesResultsListResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsListResponse[items=$items, ]';
  }

  RippleOceanServicesFeaturesResultsListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = (json['items'] == null) ?
      null :
      RippleOceanServicesFeaturesResultsListResponseItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['items'] = items;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsListResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsListResponse>() : json.map((value) => RippleOceanServicesFeaturesResultsListResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsListResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsListResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsListResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsListResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsListResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsListResponse.listFromJson(value);
       });
     }
     return map;
  }
}

