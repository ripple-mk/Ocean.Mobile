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
class RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse {
  /// Returns a new [RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse] instance.
  RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse({
    this.id,
  });

  @JsonKey(
    nullable: false,
    name: r'id',
    required: false,
  )
  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse &&
     other.id == id;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode);

  factory RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesQuestionsMultipleAnswersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesQuestionsMultipleAnswersResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

