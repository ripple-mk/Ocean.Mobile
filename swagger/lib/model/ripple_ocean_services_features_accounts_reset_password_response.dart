part of openapi.api;

class RippleOceanServicesFeaturesAccountsResetPasswordResponse {
  
  String token = null;
  
  DateTime expiryDate = null;
  
  String username = null;
  
  String userId = null;
  RippleOceanServicesFeaturesAccountsResetPasswordResponse();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsResetPasswordResponse[token=$token, expiryDate=$expiryDate, username=$username, userId=$userId, ]';
  }

  RippleOceanServicesFeaturesAccountsResetPasswordResponse.fromJson(Map<String, dynamic> json) {
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

  static List<RippleOceanServicesFeaturesAccountsResetPasswordResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsResetPasswordResponse>() : json.map((value) => RippleOceanServicesFeaturesAccountsResetPasswordResponse.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsResetPasswordResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsResetPasswordResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsResetPasswordResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsResetPasswordResponse-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsResetPasswordResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsResetPasswordResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsResetPasswordResponse.listFromJson(value);
       });
     }
     return map;
  }
}

