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
class RippleOceanServicesFeaturesAccountsRegisterRequest {
  /// Returns a new [RippleOceanServicesFeaturesAccountsRegisterRequest] instance.
  RippleOceanServicesFeaturesAccountsRegisterRequest({
    this.email,
    this.password,
    this.confirmPassword,
  });

  @JsonKey(
    nullable: true,
    name: r'email',
    required: false,
  )
  String email;

  @JsonKey(
    nullable: true,
    name: r'password',
    required: false,
  )
  String password;

  @JsonKey(
    nullable: true,
    name: r'confirmPassword',
    required: false,
  )
  String confirmPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsRegisterRequest &&
     other.email == email &&
     other.password == password &&
     other.confirmPassword == confirmPassword;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (confirmPassword == null ? 0 : confirmPassword.hashCode);

  factory RippleOceanServicesFeaturesAccountsRegisterRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsRegisterRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

