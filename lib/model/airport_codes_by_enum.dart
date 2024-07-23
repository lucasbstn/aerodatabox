//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Search by airport code type<p>Possible values:</p> <ul> <li><b>0 - Icao</b>: ICAO-code</li> <li><b>1 - Iata</b>: IATA-code</li> </ul>
class AirportCodesByEnum {
  /// Instantiate a new enum with the provided [value].
  const AirportCodesByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const icao = AirportCodesByEnum._(r'Icao');
  static const iata = AirportCodesByEnum._(r'Iata');

  /// List of all possible values in this [enum][AirportCodesByEnum].
  static const values = <AirportCodesByEnum>[
    icao,
    iata,
  ];

  static AirportCodesByEnum? fromJson(dynamic value) =>
      AirportCodesByEnumTypeTransformer().decode(value);

  static List<AirportCodesByEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportCodesByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportCodesByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AirportCodesByEnum] to String,
/// and [decode] dynamic data back to [AirportCodesByEnum].
class AirportCodesByEnumTypeTransformer {
  factory AirportCodesByEnumTypeTransformer() =>
      _instance ??= const AirportCodesByEnumTypeTransformer._();

  const AirportCodesByEnumTypeTransformer._();

  String encode(AirportCodesByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AirportCodesByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AirportCodesByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Icao':
          return AirportCodesByEnum.icao;
        case r'Iata':
          return AirportCodesByEnum.iata;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AirportCodesByEnumTypeTransformer] instance.
  static AirportCodesByEnumTypeTransformer? _instance;
}
