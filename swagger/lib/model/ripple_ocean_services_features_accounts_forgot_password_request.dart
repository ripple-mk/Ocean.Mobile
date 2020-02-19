part of openapi.api;

class RippleOceanServicesFeaturesAccountsForgotPasswordRequest {
  
  String emailAddress = null;
  RippleOceanServicesFeaturesAccountsForgotPasswordRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsForgotPasswordRequest[emailAddress=$emailAddress, ]';
  }

  RippleOceanServicesFeaturesAccountsForgotPasswordRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['emailAddress'] = emailAddress;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsForgotPasswordRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsForgotPasswordRequest>() : json.map((value) => RippleOceanServicesFeaturesAccountsForgotPasswordRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsForgotPasswordRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsForgotPasswordRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsForgotPasswordRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsForgotPasswordRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsForgotPasswordRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsForgotPasswordRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsForgotPasswordRequest.listFromJson(value);
       });
     }
     return map;
  }
}

