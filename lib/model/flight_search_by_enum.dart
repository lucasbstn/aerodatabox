//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Criteria to search flight by<p>Possible values:</p> <ul> <li><b>0 - Number</b>: Search by flight number</li> <li><b>1 - Reg</b>: Search by aircraft registration</li> <li><b>2 - CallSign</b>: Search by ATC call-sign</li> <li><b>3 - Icao24</b>: Search by 24-bit ICAO Mode-S Transponder code</li> </ul>
class FlightSearchByEnum {
  /// Instantiate a new enum with the provided [value].
  const FlightSearchByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const number = FlightSearchByEnum._(r'Number');
  static const reg = FlightSearchByEnum._(r'Reg');
  static const callSign = FlightSearchByEnum._(r'CallSign');
  static const icao24 = FlightSearchByEnum._(r'Icao24');

  /// List of all possible values in this [enum][FlightSearchByEnum].
  static const values = <FlightSearchByEnum>[
    number,
    reg,
    callSign,
    icao24,
  ];

  static FlightSearchByEnum? fromJson(dynamic value) =>
      FlightSearchByEnumTypeTransformer().decode(value);

  static List<FlightSearchByEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightSearchByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightSearchByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlightSearchByEnum] to String,
/// and [decode] dynamic data back to [FlightSearchByEnum].
class FlightSearchByEnumTypeTransformer {
  factory FlightSearchByEnumTypeTransformer() =>
      _instance ??= const FlightSearchByEnumTypeTransformer._();

  const FlightSearchByEnumTypeTransformer._();

  String encode(FlightSearchByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlightSearchByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlightSearchByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Number':
          return FlightSearchByEnum.number;
        case r'Reg':
          return FlightSearchByEnum.reg;
        case r'CallSign':
          return FlightSearchByEnum.callSign;
        case r'Icao24':
          return FlightSearchByEnum.icao24;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlightSearchByEnumTypeTransformer] instance.
  static FlightSearchByEnumTypeTransformer? _instance;
}
