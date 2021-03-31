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
class RippleOceanServicesFeaturesResultsListResponseItem {
  /// Returns a new [RippleOceanServicesFeaturesResultsListResponseItem] instance.
  RippleOceanServicesFeaturesResultsListResponseItem({
    this.id,
    this.name,
  });

  @JsonKey(
    nullable: false,
    name: r'id',
    required: false,
  )
  String id;

  @JsonKey(
    nullable: true,
    name: r'name',
    required: false,
  )
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsListResponseItem &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  factory RippleOceanServicesFeaturesResultsListResponseItem.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsListResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsListResponseItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

