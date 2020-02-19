part of openapi.api;

class RippleOceanServicesFeaturesAccountsLoginRequest {
  
  String emailAddress = null;
  
  String password = null;
  RippleOceanServicesFeaturesAccountsLoginRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsLoginRequest[emailAddress=$emailAddress, password=$password, ]';
  }

  RippleOceanServicesFeaturesAccountsLoginRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['emailAddress'] = emailAddress;
      json['password'] = password;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsLoginRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsLoginRequest>() : json.map((value) => RippleOceanServicesFeaturesAccountsLoginRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsLoginRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsLoginRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsLoginRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsLoginRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsLoginRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsLoginRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsLoginRequest.listFromJson(value);
       });
     }
     return map;
  }
}

