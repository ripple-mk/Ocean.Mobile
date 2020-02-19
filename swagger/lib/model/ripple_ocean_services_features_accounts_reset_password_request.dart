part of openapi.api;

class RippleOceanServicesFeaturesAccountsResetPasswordRequest {
  
  String resetCode = null;
  
  String newPassword = null;
  
  String confirmNewPassword = null;
  RippleOceanServicesFeaturesAccountsResetPasswordRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsResetPasswordRequest[resetCode=$resetCode, newPassword=$newPassword, confirmNewPassword=$confirmNewPassword, ]';
  }

  RippleOceanServicesFeaturesAccountsResetPasswordRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resetCode = json['resetCode'];
    newPassword = json['newPassword'];
    confirmNewPassword = json['confirmNewPassword'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['resetCode'] = resetCode;
      json['newPassword'] = newPassword;
      json['confirmNewPassword'] = confirmNewPassword;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsResetPasswordRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsResetPasswordRequest>() : json.map((value) => RippleOceanServicesFeaturesAccountsResetPasswordRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsResetPasswordRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsResetPasswordRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsResetPasswordRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsResetPasswordRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsResetPasswordRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsResetPasswordRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsResetPasswordRequest.listFromJson(value);
       });
     }
     return map;
  }
}

