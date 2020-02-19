part of openapi.api;

class RippleOceanServicesFeaturesAccountsLoginResponse {
  
  String token = null;
  
  DateTime expiryDate = null;
  
  String username = null;
  
  String userId = null;
  RippleOceanServicesFeaturesAccountsLoginResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsLoginResponse[token=$token, expiryDate=$expiryDate, username=$username, userId=$userId, ]';
  }

  RippleOceanServicesFeaturesAccountsLoginResponse.fromJson(Map<String, dynamic> json) {
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

  static List<RippleOceanServicesFeaturesAccountsLoginResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsLoginResponse>() : json.map((value) => RippleOceanServicesFeaturesAccountsLoginResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsLoginResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsLoginResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsLoginResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsLoginResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsLoginResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsLoginResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsLoginResponse.listFromJson(value);
       });
     }
     return map;
  }
}

