//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - Unknown</b></li> <li><b>1 - Asphalt</b></li> <li><b>2 - Concrete</b></li> <li><b>3 - Grass</b></li> <li><b>4 - Dirt</b></li> <li><b>5 - Gravel</b></li> <li><b>6 - DryLakebed</b></li> <li><b>7 - Water</b></li> <li><b>8 - Snow</b></li> </ul>
class SurfaceType {
  /// Instantiate a new enum with the provided [value].
  const SurfaceType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = SurfaceType._(r'Unknown');
  static const asphalt = SurfaceType._(r'Asphalt');
  static const concrete = SurfaceType._(r'Concrete');
  static const grass = SurfaceType._(r'Grass');
  static const dirt = SurfaceType._(r'Dirt');
  static const gravel = SurfaceType._(r'Gravel');
  static const dryLakebed = SurfaceType._(r'DryLakebed');
  static const water = SurfaceType._(r'Water');
  static const snow = SurfaceType._(r'Snow');

  /// List of all possible values in this [enum][SurfaceType].
  static const values = <SurfaceType>[
    unknown,
    asphalt,
    concrete,
    grass,
    dirt,
    gravel,
    dryLakebed,
    water,
    snow,
  ];

  static SurfaceType? fromJson(dynamic value) =>
      SurfaceTypeTypeTransformer().decode(value);

  static List<SurfaceType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SurfaceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SurfaceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SurfaceType] to String,
/// and [decode] dynamic data back to [SurfaceType].
class SurfaceTypeTypeTransformer {
  factory SurfaceTypeTypeTransformer() =>
      _instance ??= const SurfaceTypeTypeTransformer._();

  const SurfaceTypeTypeTransformer._();

  String encode(SurfaceType data) => data.value;

  /// Decodes a [dynamic value][data] to a SurfaceType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SurfaceType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown':
          return SurfaceType.unknown;
        case r'Asphalt':
          return SurfaceType.asphalt;
        case r'Concrete':
          return SurfaceType.concrete;
        case r'Grass':
          return SurfaceType.grass;
        case r'Dirt':
          return SurfaceType.dirt;
        case r'Gravel':
          return SurfaceType.gravel;
        case r'DryLakebed':
          return SurfaceType.dryLakebed;
        case r'Water':
          return SurfaceType.water;
        case r'Snow':
          return SurfaceType.snow;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SurfaceTypeTypeTransformer] instance.
  static SurfaceTypeTypeTransformer? _instance;
}
