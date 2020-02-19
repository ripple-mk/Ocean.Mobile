part of openapi.api;

class RippleOceanServicesFeaturesAccountsRegisterResponse {
  
  String id = null;
  RippleOceanServicesFeaturesAccountsRegisterResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsRegisterResponse[id=$id, ]';
  }

  RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsRegisterResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsRegisterResponse>() : json.map((value) => RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsRegisterResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsRegisterResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsRegisterResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsRegisterResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsRegisterResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsRegisterResponse.listFromJson(value);
       });
     }
     return map;
  }
}

