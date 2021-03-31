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
class RippleOceanServicesFeaturesAccountsForgotPasswordResponse {
  /// Returns a new [RippleOceanServicesFeaturesAccountsForgotPasswordResponse] instance.
  RippleOceanServicesFeaturesAccountsForgotPasswordResponse({
    this.success,
  });

  @JsonKey(
    nullable: false,
    name: r'success',
    required: false,
  )
  bool success;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesAccountsForgotPasswordResponse &&
     other.success == success;

  @override
  int get hashCode =>
    (success == null ? 0 : success.hashCode);

  factory RippleOceanServicesFeaturesAccountsForgotPasswordResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesAccountsForgotPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesAccountsForgotPasswordResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

