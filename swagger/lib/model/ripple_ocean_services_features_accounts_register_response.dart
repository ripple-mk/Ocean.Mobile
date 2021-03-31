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
class RippleOceanServicesFeaturesAccountsRegisterResponse {
  /// Returns a new [RippleOceanServicesFeaturesAccountsRegisterResponse] instance.
  RippleOceanServicesFeaturesAccountsRegisterResponse({
    this.token,
    this.expiryDate,
    this.username,
    this.userId,
  });

  @JsonKey(
    nullable: true,
    name: r'token',
    required: false,
  )
  String token;

  @JsonKey(
    nullable: false,
    name: r'expiryDate',
    required: false,
  )
  DateTime expiryDate;

  @JsonKey(
    nullable: true,
    name: r'username',
    required: false,
  )
  String username;

  @JsonKey(
    nullable: false,
    name: r'userId',
    required: false,
  )
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsRegisterResponse &&
     other.token == token &&
     other.expiryDate == expiryDate &&
     other.username == username &&
     other.userId == userId;

  @override
  int get hashCode =>
    (token == null ? 0 : token.hashCode) +
    (expiryDate == null ? 0 : expiryDate.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  factory RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsRegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsRegisterResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

