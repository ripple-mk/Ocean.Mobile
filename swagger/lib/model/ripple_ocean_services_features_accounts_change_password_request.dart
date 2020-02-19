part of openapi.api;

class RippleOceanServicesFeaturesAccountsChangePasswordRequest {
  
  String currentPassword = null;
  
  String newPassword = null;
  
  String confirmPassword = null;
  RippleOceanServicesFeaturesAccountsChangePasswordRequest();

  @override
  String toString() {
    return 'RippleOceanServicesFeaturesAccountsChangePasswordRequest[currentPassword=$currentPassword, newPassword=$newPassword, confirmPassword=$confirmPassword, ]';
  }

  RippleOceanServicesFeaturesAccountsChangePasswordRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentPassword = json['currentPassword'];
    newPassword = json['newPassword'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
      json['currentPassword'] = currentPassword;
      json['newPassword'] = newPassword;
      json['confirmPassword'] = confirmPassword;
    return json;
  }

  static List<RippleOceanServicesFeaturesAccountsChangePasswordRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RippleOceanServicesFeaturesAccountsChangePasswordRequest>() : json.map((value) => RippleOceanServicesFeaturesAccountsChangePasswordRequest.fromJson(value)).toList();
  }

  static Map<String, RippleOceanServicesFeaturesAccountsChangePasswordRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RippleOceanServicesFeaturesAccountsChangePasswordRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RippleOceanServicesFeaturesAccountsChangePasswordRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RippleOceanServicesFeaturesAccountsChangePasswordRequest-objects as value to a dart map
  static Map<String, List<RippleOceanServicesFeaturesAccountsChangePasswordRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RippleOceanServicesFeaturesAccountsChangePasswordRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RippleOceanServicesFeaturesAccountsChangePasswordRequest.listFromJson(value);
       });
     }
     return map;
  }
}

