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
class RippleOceanServicesFeaturesResultsGetResponse {
  /// Returns a new [RippleOceanServicesFeaturesResultsGetResponse] instance.
  RippleOceanServicesFeaturesResultsGetResponse({
    this.id,
    this.date,
    this.items,
  });

  @JsonKey(
    nullable: false,
    name: r'id',
    required: false,
  )
  String id;

  @JsonKey(
    nullable: true,
    name: r'date',
    required: false,
  )
  String date;

  @JsonKey(
    defaultValue: const [],
    name: r'items',
    required: false,
  )
  List<RippleOceanServicesFeaturesResultsGetResponseItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RippleOceanServicesFeaturesResultsGetResponse &&
     other.id == id &&
     other.date == date &&
     other.items == items;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (items == null ? 0 : items.hashCode);

  factory RippleOceanServicesFeaturesResultsGetResponse.fromJson(Map<String, dynamic> json) => _$RippleOceanServicesFeaturesResultsGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RippleOceanServicesFeaturesResultsGetResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

