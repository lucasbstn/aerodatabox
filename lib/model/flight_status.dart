//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Flight progress status<p>Possible values:</p> <ul> <li><b>0 - Unknown</b>: Information is not provided</li> <li><b>1 - Expected</b>: Expected</li> <li><b>2 - EnRoute</b>: En route</li> <li><b>3 - CheckIn</b>: Check-in is open</li> <li><b>4 - Boarding</b>: Boarding in progress / Last call</li> <li><b>5 - GateClosed</b>: Gate closed</li> <li><b>6 - Departed</b>: Departed</li> <li><b>7 - Delayed</b>: Delayed</li> <li><b>8 - Approaching</b>: On approach to destination</li> <li><b>9 - Arrived</b>: Arrived</li> <li><b>10 - Canceled</b>: Cancelled</li> <li><b>11 - Diverted</b>: Diverted to another destination</li> <li><b>12 - CanceledUncertain</b>: Probably cancelled, as no expected updates came for the flight</li> </ul>
class FlightStatus {
  /// Instantiate a new enum with the provided [value].
  const FlightStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = FlightStatus._(r'Unknown');
  static const expected = FlightStatus._(r'Expected');
  static const enRoute = FlightStatus._(r'EnRoute');
  static const checkIn = FlightStatus._(r'CheckIn');
  static const boarding = FlightStatus._(r'Boarding');
  static const gateClosed = FlightStatus._(r'GateClosed');
  static const departed = FlightStatus._(r'Departed');
  static const delayed = FlightStatus._(r'Delayed');
  static const approaching = FlightStatus._(r'Approaching');
  static const arrived = FlightStatus._(r'Arrived');
  static const canceled = FlightStatus._(r'Canceled');
  static const diverted = FlightStatus._(r'Diverted');
  static const canceledUncertain = FlightStatus._(r'CanceledUncertain');

  /// List of all possible values in this [enum][FlightStatus].
  static const values = <FlightStatus>[
    unknown,
    expected,
    enRoute,
    checkIn,
    boarding,
    gateClosed,
    departed,
    delayed,
    approaching,
    arrived,
    canceled,
    diverted,
    canceledUncertain,
  ];

  static FlightStatus? fromJson(dynamic value) =>
      FlightStatusTypeTransformer().decode(value);

  static List<FlightStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlightStatus] to String,
/// and [decode] dynamic data back to [FlightStatus].
class FlightStatusTypeTransformer {
  factory FlightStatusTypeTransformer() =>
      _instance ??= const FlightStatusTypeTransformer._();

  const FlightStatusTypeTransformer._();

  String encode(FlightStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a FlightStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlightStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown':
          return FlightStatus.unknown;
        case r'Expected':
          return FlightStatus.expected;
        case r'EnRoute':
          return FlightStatus.enRoute;
        case r'CheckIn':
          return FlightStatus.checkIn;
        case r'Boarding':
          return FlightStatus.boarding;
        case r'GateClosed':
          return FlightStatus.gateClosed;
        case r'Departed':
          return FlightStatus.departed;
        case r'Delayed':
          return FlightStatus.delayed;
        case r'Approaching':
          return FlightStatus.approaching;
        case r'Arrived':
          return FlightStatus.arrived;
        case r'Canceled':
          return FlightStatus.canceled;
        case r'Diverted':
          return FlightStatus.diverted;
        case r'CanceledUncertain':
          return FlightStatus.canceledUncertain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlightStatusTypeTransformer] instance.
  static FlightStatusTypeTransformer? _instance;
}
