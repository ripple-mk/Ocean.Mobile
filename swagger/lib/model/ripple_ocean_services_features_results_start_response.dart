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
class RippleOceanServicesFeaturesResultsStartResponse {
  /// Returns a new [RippleOceanServicesFeaturesResultsStartResponse] instance.
  RippleOceanServicesFeaturesResultsStartResponse({
    this.id,
    this.questions,
  });

  @JsonKey(
    nullable: false,
    name: r'id',
    required: false,
  )
  String id;

  @JsonKey(
    defaultValue: const [],
    name: r'questions',
    required: false,
  )
  List<RippleOceanServicesFeaturesResultsStartResponseQuestion> questions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsStartResponse &&
     other.id == id &&
     other.questions == questions;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (questions == null ? 0 : questions.hashCode);

  factory RippleOceanServicesFeaturesResultsStartResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsStartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsStartResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

