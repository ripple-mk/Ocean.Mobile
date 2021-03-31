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
class RippleOceanServicesFeaturesResultsGetResponseItem {
  /// Returns a new [RippleOceanServicesFeaturesResultsGetResponseItem] instance.
  RippleOceanServicesFeaturesResultsGetResponseItem({
    this.name,
    this.value,
    this.percent,
    this.description,
  });

  @JsonKey(
    nullable: true,
    name: r'name',
    required: false,
  )
  String name;

  @JsonKey(
    nullable: false,
    name: r'value',
    required: false,
  )
  int value;

  @JsonKey(
    nullable: false,
    name: r'percent',
    required: false,
  )
  int percent;

  @JsonKey(
    nullable: true,
    name: r'description',
    required: false,
  )
  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsGetResponseItem &&
     other.name == name &&
     other.value == value &&
     other.percent == percent &&
     other.description == description;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (percent == null ? 0 : percent.hashCode) +
    (description == null ? 0 : description.hashCode);

  factory RippleOceanServicesFeaturesResultsGetResponseItem.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsGetResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsGetResponseItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

