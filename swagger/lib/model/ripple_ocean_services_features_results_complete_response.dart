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
class RippleOceanServicesFeaturesResultsCompleteResponse {
  /// Returns a new [RippleOceanServicesFeaturesResultsCompleteResponse] instance.
  RippleOceanServicesFeaturesResultsCompleteResponse({
    this.success,
  });

  @JsonKey(
    nullable: false,
    name: r'success',
    required: false,
  )
  bool success;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsCompleteResponse &&
     other.success == success;

  @override
  int get hashCode =>
    (success == null ? 0 : success.hashCode);

  factory RippleOceanServicesFeaturesResultsCompleteResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsCompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsCompleteResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

