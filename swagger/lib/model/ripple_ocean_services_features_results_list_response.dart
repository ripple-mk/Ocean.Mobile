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
class RippleOceanServicesFeaturesResultsListResponse {
  /// Returns a new [RippleOceanServicesFeaturesResultsListResponse] instance.
  RippleOceanServicesFeaturesResultsListResponse({
    this.items,
  });

  @JsonKey(
    defaultValue: const [],
    name: r'items',
    required: false,
  )
  List<RippleOceanServicesFeaturesResultsListResponseItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsListResponse &&
     other.items == items;

  @override
  int get hashCode =>
    (items == null ? 0 : items.hashCode);

  factory RippleOceanServicesFeaturesResultsListResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsListResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

