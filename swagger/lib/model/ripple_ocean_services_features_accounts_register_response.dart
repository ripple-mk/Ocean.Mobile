part of openapi.api;

class RippleOceanServicesFeaturesAccountsRegisterResponse {
  
  String token = null;
  
  DateTime expiryDate = null;
  
  String username = null;
  
  String userId = null;
  RippleOceanServicesFeaturesAccountsRegisterResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsRegisterResponse[token=$token, expiryDate=$expiryDate, username=$username, userId=$userId, ]';
  }

  RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
    expiryDate = (json['expiryDate'] == null) ?
      null :
      DateTime.parse(json['expiryDate']);
    username = json['username'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['token'] = token;
    if (expiryDate != null)
      json['expiryDate'] = expiryDate == null ? null : expiryDate.toUtc().toIso8601String();
      json['username'] = username;
    if (userId != null)
      json['userId'] = userId;
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

