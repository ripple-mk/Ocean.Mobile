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
class RippleOceanServicesFeaturesAccountsResetPasswordRequest {
  /// Returns a new [RippleOceanServicesFeaturesAccountsResetPasswordRequest] instance.
  RippleOceanServicesFeaturesAccountsResetPasswordRequest({
    this.resetCode,
    this.newPassword,
    this.confirmNewPassword,
  });

  @JsonKey(
    nullable: true,
    name: r'resetCode',
    required: false,
  )
  String resetCode;

  @JsonKey(
    nullable: true,
    name: r'newPassword',
    required: false,
  )
  String newPassword;

  @JsonKey(
    nullable: true,
    name: r'confirmNewPassword',
    required: false,
  )
  String confirmNewPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsResetPasswordRequest &&
     other.resetCode == resetCode &&
     other.newPassword == newPassword &&
     other.confirmNewPassword == confirmNewPassword;

  @override
  int get hashCode =>
    (resetCode == null ? 0 : resetCode.hashCode) +
    (newPassword == null ? 0 : newPassword.hashCode) +
    (confirmNewPassword == null ? 0 : confirmNewPassword.hashCode);

  factory RippleOceanServicesFeaturesAccountsResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsResetPasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

