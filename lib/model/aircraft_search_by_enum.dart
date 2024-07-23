//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Criteria to search aircraft by<p>Possible values:</p> <ul> <li><b>0 - Id</b>: ID of the aircraft (as stored in this API)</li> <li><b>1 - Reg</b>: Search by aircraft tail-number</li> <li><b>2 - Icao24</b>: Search by 24-bit ICAO Mode-S Transponder code</li> </ul>
class AircraftSearchByEnum {
  /// Instantiate a new enum with the provided [value].
  const AircraftSearchByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const id = AircraftSearchByEnum._(r'Id');
  static const reg = AircraftSearchByEnum._(r'Reg');
  static const icao24 = AircraftSearchByEnum._(r'Icao24');

  /// List of all possible values in this [enum][AircraftSearchByEnum].
  static const values = <AircraftSearchByEnum>[
    id,
    reg,
    icao24,
  ];

  static AircraftSearchByEnum? fromJson(dynamic value) =>
      AircraftSearchByEnumTypeTransformer().decode(value);

  static List<AircraftSearchByEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AircraftSearchByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AircraftSearchByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AircraftSearchByEnum] to String,
/// and [decode] dynamic data back to [AircraftSearchByEnum].
class AircraftSearchByEnumTypeTransformer {
  factory AircraftSearchByEnumTypeTransformer() =>
      _instance ??= const AircraftSearchByEnumTypeTransformer._();

  const AircraftSearchByEnumTypeTransformer._();

  String encode(AircraftSearchByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AircraftSearchByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AircraftSearchByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Id':
          return AircraftSearchByEnum.id;
        case r'Reg':
          return AircraftSearchByEnum.reg;
        case r'Icao24':
          return AircraftSearchByEnum.icao24;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AircraftSearchByEnumTypeTransformer] instance.
  static AircraftSearchByEnumTypeTransformer? _instance;
}
