//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Direction of flight<p>Possible values:</p> <ul> <li><b>1 - Arrival</b></li> <li><b>2 - Departure</b></li> <li><b>3 - Both</b></li> </ul>
class FlightDirection {
  /// Instantiate a new enum with the provided [value].
  const FlightDirection._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const arrival = FlightDirection._(r'Arrival');
  static const departure = FlightDirection._(r'Departure');
  static const both = FlightDirection._(r'Both');

  /// List of all possible values in this [enum][FlightDirection].
  static const values = <FlightDirection>[
    arrival,
    departure,
    both,
  ];

  static FlightDirection? fromJson(dynamic value) =>
      FlightDirectionTypeTransformer().decode(value);

  static List<FlightDirection> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightDirection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightDirection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlightDirection] to String,
/// and [decode] dynamic data back to [FlightDirection].
class FlightDirectionTypeTransformer {
  factory FlightDirectionTypeTransformer() =>
      _instance ??= const FlightDirectionTypeTransformer._();

  const FlightDirectionTypeTransformer._();

  String encode(FlightDirection data) => data.value;

  /// Decodes a [dynamic value][data] to a FlightDirection.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlightDirection? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Arrival':
          return FlightDirection.arrival;
        case r'Departure':
          return FlightDirection.departure;
        case r'Both':
          return FlightDirection.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlightDirectionTypeTransformer] instance.
  static FlightDirectionTypeTransformer? _instance;
}
