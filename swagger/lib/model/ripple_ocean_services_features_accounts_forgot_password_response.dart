part of openapi.api;

class RippleOceanServicesFeaturesAccountsForgotPasswordResponse {
  
  bool success = null;
  RippleOceanServicesFeaturesAccountsForgotPasswordResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsForgotPasswordResponse[success=$success, ]';
  }

  RippleOceanServicesFeaturesAccountsForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (success != null)
      json['success'] = success;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsForgotPasswordResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsForgotPasswordResponse>() : json.map((value) => RippleOceanServicesFeaturesAccountsForgotPasswordResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsForgotPasswordResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsForgotPasswordResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsForgotPasswordResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsForgotPasswordResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsForgotPasswordResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsForgotPasswordResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsForgotPasswordResponse.listFromJson(value);
       });
     }
     return map;
  }
}

