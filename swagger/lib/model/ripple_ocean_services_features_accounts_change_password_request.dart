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
class RippleOceanServicesFeaturesAccountsChangePasswordRequest {
  /// Returns a new [RippleOceanServicesFeaturesAccountsChangePasswordRequest] instance.
  RippleOceanServicesFeaturesAccountsChangePasswordRequest({
    this.currentPassword,
    this.newPassword,
    this.confirmPassword,
  });

  @JsonKey(
    nullable: true,
    name: r'currentPassword',
    required: false,
  )
  String currentPassword;

  @JsonKey(
    nullable: true,
    name: r'newPassword',
    required: false,
  )
  String newPassword;

  @JsonKey(
    nullable: true,
    name: r'confirmPassword',
    required: false,
  )
  String confirmPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsChangePasswordRequest &&
     other.currentPassword == currentPassword &&
     other.newPassword == newPassword &&
     other.confirmPassword == confirmPassword;

  @override
  int get hashCode =>
    (currentPassword == null ? 0 : currentPassword.hashCode) +
    (newPassword == null ? 0 : newPassword.hashCode) +
    (confirmPassword == null ? 0 : confirmPassword.hashCode);

  factory RippleOceanServicesFeaturesAccountsChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsChangePasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

