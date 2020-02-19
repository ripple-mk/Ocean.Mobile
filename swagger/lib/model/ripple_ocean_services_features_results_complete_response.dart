part of openapi.api;

class RippleOceanServicesFeaturesResultsCompleteResponse {
  
  bool success = null;
  RippleOceanServicesFeaturesResultsCompleteResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesResultsCompleteResponse[success=$success, ]';
  }

  RippleOceanServicesFeaturesResultsCompleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (success != null)
      json['success'] = success;
    return json;
  }

  static List<RippleOceanServicesFeaturesResultsCompleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesResultsCompleteResponse>() : json.map((value) => RippleOceanServicesFeaturesResultsCompleteResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesResultsCompleteResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesResultsCompleteResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesResultsCompleteResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesResultsCompleteResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesResultsCompleteResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesResultsCompleteResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesResultsCompleteResponse.listFromJson(value);
       });
     }
     return map;
  }
}

