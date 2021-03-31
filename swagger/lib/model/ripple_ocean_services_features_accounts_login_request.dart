//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
)
class RippleOceanServicesFeaturesAccountsLoginRequest {
  /// Returns a new [RippleOceanServicesFeaturesAccountsLoginRequest] instance.
  RippleOceanServicesFeaturesAccountsLoginRequest({
    this.emailAddress,
    this.password,
  });

  @JsonKey(
    nullable: true,
    name: r'emailAddress',
    required: false,
  )
  String emailAddress;

  @JsonKey(
    nullable: true,
    name: r'password',
    required: false,
  )
  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsLoginRequest &&
     other.emailAddress == emailAddress &&
     other.password == password;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (password == null ? 0 : password.hashCode);

  factory RippleOceanServicesFeaturesAccountsLoginRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsLoginRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

