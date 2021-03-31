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
class RippleOceanServicesFeaturesQuestionsAnswerRequest {
  /// Returns a new [RippleOceanServicesFeaturesQuestionsAnswerRequest] instance.
  RippleOceanServicesFeaturesQuestionsAnswerRequest({
    this.resultId,
    this.value,
    this.questionId,
  });

  @JsonKey(
    nullable: false,
    name: r'resultId',
    required: false,
  )
  String resultId;

  @JsonKey(
    nullable: false,
    name: r'value',
    required: false,
  )
  int value;

  @JsonKey(
    nullable: false,
    name: r'questionId',
    required: false,
  )
  String questionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesQuestionsAnswerRequest &&
     other.resultId == resultId &&
     other.value == value &&
     other.questionId == questionId;

  @override
  int get hashCode =>
    (resultId == null ? 0 : resultId.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (questionId == null ? 0 : questionId.hashCode);

  factory RippleOceanServicesFeaturesQuestionsAnswerRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesQuestionsAnswerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesQuestionsAnswerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

