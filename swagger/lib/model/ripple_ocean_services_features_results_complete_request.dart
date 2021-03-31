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
class RippleOceanServicesFeaturesResultsCompleteRequest {
  /// Returns a new [RippleOceanServicesFeaturesResultsCompleteRequest] instance.
  RippleOceanServicesFeaturesResultsCompleteRequest({
    this.resultId,
    this.answers,
  });

  @JsonKey(
    nullable: false,
    name: r'resultId',
    required: false,
  )
  String resultId;

  @JsonKey(
    defaultValue: const [],
    name: r'answers',
    required: false,
  )
  List<RippleOceanServicesFeaturesResultsCompleteRequestAnswer> answers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsCompleteRequest &&
     other.resultId == resultId &&
     other.answers == answers;

  @override
  int get hashCode =>
    (resultId == null ? 0 : resultId.hashCode) +
    (answers == null ? 0 : answers.hashCode);

  factory RippleOceanServicesFeaturesResultsCompleteRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsCompleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsCompleteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

