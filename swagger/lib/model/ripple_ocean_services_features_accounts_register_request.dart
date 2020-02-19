part of openapi.api;

class RippleOceanServicesFeaturesAccountsRegisterRequest {
  
  String email = null;
  
  String password = null;
  
  String confirmPassword = null;
  RippleOceanServicesFeaturesAccountsRegisterRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsRegisterRequest[email=$email, password=$password, confirmPassword=$confirmPassword, ]';
  }

  RippleOceanServicesFeaturesAccountsRegisterRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['email'] = email;
      json['password'] = password;
      json['confirmPassword'] = confirmPassword;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsRegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsRegisterRequest>() : json.map((value) => RippleOceanServicesFeaturesAccountsRegisterRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsRegisterRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsRegisterRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsRegisterRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsRegisterRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsRegisterRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsRegisterRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsRegisterRequest.listFromJson(value);
       });
     }
     return map;
  }
}

