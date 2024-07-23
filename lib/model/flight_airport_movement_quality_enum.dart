//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Quality characteristics of the information provided within flight FlightAirportMovementContract<p>Possible values:</p> <ul> <li><b>0 - Basic</b></li> <li><b>1 - Live</b></li> <li><b>2 - Approximate</b></li> </ul>
class FlightAirportMovementQualityEnum {
  /// Instantiate a new enum with the provided [value].
  const FlightAirportMovementQualityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const basic = FlightAirportMovementQualityEnum._(r'Basic');
  static const live = FlightAirportMovementQualityEnum._(r'Live');
  static const approximate = FlightAirportMovementQualityEnum._(r'Approximate');

  /// List of all possible values in this [enum][FlightAirportMovementQualityEnum].
  static const values = <FlightAirportMovementQualityEnum>[
    basic,
    live,
    approximate,
  ];

  static FlightAirportMovementQualityEnum? fromJson(dynamic value) =>
      FlightAirportMovementQualityEnumTypeTransformer().decode(value);

  static List<FlightAirportMovementQualityEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightAirportMovementQualityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightAirportMovementQualityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlightAirportMovementQualityEnum] to String,
/// and [decode] dynamic data back to [FlightAirportMovementQualityEnum].
class FlightAirportMovementQualityEnumTypeTransformer {
  factory FlightAirportMovementQualityEnumTypeTransformer() =>
      _instance ??= const FlightAirportMovementQualityEnumTypeTransformer._();

  const FlightAirportMovementQualityEnumTypeTransformer._();

  String encode(FlightAirportMovementQualityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlightAirportMovementQualityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlightAirportMovementQualityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Basic':
          return FlightAirportMovementQualityEnum.basic;
        case r'Live':
          return FlightAirportMovementQualityEnum.live;
        case r'Approximate':
          return FlightAirportMovementQualityEnum.approximate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlightAirportMovementQualityEnumTypeTransformer] instance.
  static FlightAirportMovementQualityEnumTypeTransformer? _instance;
}
