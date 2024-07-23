//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Daytime states<p>Possible values:</p> <ul> <li><b>0 - Night</b></li> <li><b>1 - TwilightAstronomical</b></li> <li><b>2 - TwilightNautical</b></li> <li><b>3 - TwilightCivil</b></li> <li><b>4 - Day</b></li> <li><b>5 - BlueHour</b></li> <li><b>6 - GoldenHour</b></li> </ul>
class DayTime {
  /// Instantiate a new enum with the provided [value].
  const DayTime._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const night = DayTime._(r'Night');
  static const twilightAstronomical = DayTime._(r'TwilightAstronomical');
  static const twilightNautical = DayTime._(r'TwilightNautical');
  static const twilightCivil = DayTime._(r'TwilightCivil');
  static const day = DayTime._(r'Day');
  static const blueHour = DayTime._(r'BlueHour');
  static const goldenHour = DayTime._(r'GoldenHour');

  /// List of all possible values in this [enum][DayTime].
  static const values = <DayTime>[
    night,
    twilightAstronomical,
    twilightNautical,
    twilightCivil,
    day,
    blueHour,
    goldenHour,
  ];

  static DayTime? fromJson(dynamic value) =>
      DayTimeTypeTransformer().decode(value);

  static List<DayTime> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DayTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DayTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DayTime] to String,
/// and [decode] dynamic data back to [DayTime].
class DayTimeTypeTransformer {
  factory DayTimeTypeTransformer() =>
      _instance ??= const DayTimeTypeTransformer._();

  const DayTimeTypeTransformer._();

  String encode(DayTime data) => data.value;

  /// Decodes a [dynamic value][data] to a DayTime.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DayTime? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Night':
          return DayTime.night;
        case r'TwilightAstronomical':
          return DayTime.twilightAstronomical;
        case r'TwilightNautical':
          return DayTime.twilightNautical;
        case r'TwilightCivil':
          return DayTime.twilightCivil;
        case r'Day':
          return DayTime.day;
        case r'BlueHour':
          return DayTime.blueHour;
        case r'GoldenHour':
          return DayTime.goldenHour;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DayTimeTypeTransformer] instance.
  static DayTimeTypeTransformer? _instance;
}
