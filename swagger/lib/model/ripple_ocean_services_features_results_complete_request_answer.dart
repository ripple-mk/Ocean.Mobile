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
class RippleOceanServicesFeaturesResultsCompleteRequestAnswer {
  /// Returns a new [RippleOceanServicesFeaturesResultsCompleteRequestAnswer] instance.
  RippleOceanServicesFeaturesResultsCompleteRequestAnswer({
    this.questionId,
    this.value,
  });

  @JsonKey(
    nullable: false,
    name: r'questionId',
    required: false,
  )
  String questionId;

  @JsonKey(
    nullable: false,
    name: r'value',
    required: false,
  )
  int value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsCompleteRequestAnswer &&
     other.questionId == questionId &&
     other.value == value;

  @override
  int get hashCode =>
    (questionId == null ? 0 : questionId.hashCode) +
    (value == null ? 0 : value.hashCode);

  factory RippleOceanServicesFeaturesResultsCompleteRequestAnswer.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsCompleteRequestAnswerFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsCompleteRequestAnswerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

