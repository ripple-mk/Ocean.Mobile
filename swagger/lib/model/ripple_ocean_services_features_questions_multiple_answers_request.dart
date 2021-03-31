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
class RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest {
  /// Returns a new [RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest] instance.
  RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest({
    this.resultId,
  });

  @JsonKey(
    nullable: false,
    name: r'resultId',
    required: false,
  )
  String resultId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest &&
     other.resultId == resultId;

  @override
  int get hashCode =>
    (resultId == null ? 0 : resultId.hashCode);

  factory RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesQuestionsMultipleAnswersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesQuestionsMultipleAnswersRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

