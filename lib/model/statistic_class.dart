//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - Flight</b></li> <li><b>1 - FlightAndHour</b></li> </ul>
class StatisticClass {
  /// Instantiate a new enum with the provided [value].
  const StatisticClass._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const flight = StatisticClass._(r'Flight');
  static const flightAndHour = StatisticClass._(r'FlightAndHour');

  /// List of all possible values in this [enum][StatisticClass].
  static const values = <StatisticClass>[
    flight,
    flightAndHour,
  ];

  static StatisticClass? fromJson(dynamic value) =>
      StatisticClassTypeTransformer().decode(value);

  static List<StatisticClass> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StatisticClass>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatisticClass.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StatisticClass] to String,
/// and [decode] dynamic data back to [StatisticClass].
class StatisticClassTypeTransformer {
  factory StatisticClassTypeTransformer() =>
      _instance ??= const StatisticClassTypeTransformer._();

  const StatisticClassTypeTransformer._();

  String encode(StatisticClass data) => data.value;

  /// Decodes a [dynamic value][data] to a StatisticClass.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StatisticClass? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Flight':
          return StatisticClass.flight;
        case r'FlightAndHour':
          return StatisticClass.flightAndHour;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StatisticClassTypeTransformer] instance.
  static StatisticClassTypeTransformer? _instance;
}
