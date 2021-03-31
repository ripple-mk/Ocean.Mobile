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
class RippleOceanServicesFeaturesResultsStartResponseQuestion {
  /// Returns a new [RippleOceanServicesFeaturesResultsStartResponseQuestion] instance.
  RippleOceanServicesFeaturesResultsStartResponseQuestion({
    this.id,
    this.text,
    this.value,
    this.position,
  });

  @JsonKey(
    nullable: false,
    name: r'id',
    required: false,
  )
  String id;

  @JsonKey(
    nullable: true,
    name: r'text',
    required: false,
  )
  String text;

  @JsonKey(
    nullable: false,
    name: r'value',
    required: false,
  )
  int value;

  @JsonKey(
    nullable: false,
    name: r'position',
    required: false,
  )
  int position;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsStartResponseQuestion &&
     other.id == id &&
     other.text == text &&
     other.value == value &&
     other.position == position;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (position == null ? 0 : position.hashCode);

  factory RippleOceanServicesFeaturesResultsStartResponseQuestion.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsStartResponseQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsStartResponseQuestionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

