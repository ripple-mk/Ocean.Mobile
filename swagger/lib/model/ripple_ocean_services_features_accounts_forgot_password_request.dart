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
class RippleOceanServicesFeaturesAccountsForgotPasswordRequest {
  /// Returns a new [RippleOceanServicesFeaturesAccountsForgotPasswordRequest] instance.
  RippleOceanServicesFeaturesAccountsForgotPasswordRequest({
    this.emailAddress,
  });

  @JsonKey(
    nullable: true,
    name: r'emailAddress',
    required: false,
  )
  String emailAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsForgotPasswordRequest &&
     other.emailAddress == emailAddress;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode);

  factory RippleOceanServicesFeaturesAccountsForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsForgotPasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

