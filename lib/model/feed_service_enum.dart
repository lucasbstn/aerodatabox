//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Airport feed service defininitions<p>Possible values:</p> <ul> <li><b>0 - FlightSchedules</b>: Flight schedules data feed for this airport (static schedules data without actual updates)</li> <li><b>1 - FlightLiveUpdates</b>: Actual flight status and time updates for this airport</li> <li><b>2 - AdsbUpdates</b>: Flight updates derived from ADS-B data for this airport: runway, actual/estimated time on the runway, call-sign, ModeS 24-bit ICAO code, aircraft registration</li> </ul>
class FeedServiceEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedServiceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const flightSchedules = FeedServiceEnum._(r'FlightSchedules');
  static const flightLiveUpdates = FeedServiceEnum._(r'FlightLiveUpdates');
  static const adsbUpdates = FeedServiceEnum._(r'AdsbUpdates');

  /// List of all possible values in this [enum][FeedServiceEnum].
  static const values = <FeedServiceEnum>[
    flightSchedules,
    flightLiveUpdates,
    adsbUpdates,
  ];

  static FeedServiceEnum? fromJson(dynamic value) =>
      FeedServiceEnumTypeTransformer().decode(value);

  static List<FeedServiceEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FeedServiceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeedServiceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FeedServiceEnum] to String,
/// and [decode] dynamic data back to [FeedServiceEnum].
class FeedServiceEnumTypeTransformer {
  factory FeedServiceEnumTypeTransformer() =>
      _instance ??= const FeedServiceEnumTypeTransformer._();

  const FeedServiceEnumTypeTransformer._();

  String encode(FeedServiceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedServiceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedServiceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FlightSchedules':
          return FeedServiceEnum.flightSchedules;
        case r'FlightLiveUpdates':
          return FeedServiceEnum.flightLiveUpdates;
        case r'AdsbUpdates':
          return FeedServiceEnum.adsbUpdates;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FeedServiceEnumTypeTransformer] instance.
  static FeedServiceEnumTypeTransformer? _instance;
}
