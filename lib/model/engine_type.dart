//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - Unknown</b></li> <li><b>1 - Jet</b></li> <li><b>2 - Turboprop</b></li> <li><b>3 - Piston</b></li> </ul>
class EngineType {
  /// Instantiate a new enum with the provided [value].
  const EngineType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = EngineType._(r'Unknown');
  static const jet = EngineType._(r'Jet');
  static const turboprop = EngineType._(r'Turboprop');
  static const piston = EngineType._(r'Piston');

  /// List of all possible values in this [enum][EngineType].
  static const values = <EngineType>[
    unknown,
    jet,
    turboprop,
    piston,
  ];

  static EngineType? fromJson(dynamic value) =>
      EngineTypeTypeTransformer().decode(value);

  static List<EngineType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EngineType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EngineType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EngineType] to String,
/// and [decode] dynamic data back to [EngineType].
class EngineTypeTypeTransformer {
  factory EngineTypeTypeTransformer() =>
      _instance ??= const EngineTypeTypeTransformer._();

  const EngineTypeTypeTransformer._();

  String encode(EngineType data) => data.value;

  /// Decodes a [dynamic value][data] to a EngineType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EngineType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown':
          return EngineType.unknown;
        case r'Jet':
          return EngineType.jet;
        case r'Turboprop':
          return EngineType.turboprop;
        case r'Piston':
          return EngineType.piston;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EngineTypeTypeTransformer] instance.
  static EngineTypeTypeTransformer? _instance;
}
