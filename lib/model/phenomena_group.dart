//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - None</b></li> <li><b>1 - Rainfall</b></li> <li><b>2 - Snow</b></li> <li><b>3 - Hail</b></li> <li><b>4 - Thunderstorm</b></li> <li><b>5 - AtmosphericObscurant</b></li> <li><b>6 - SevereWeather</b></li> </ul>
class PhenomenaGroup {
  /// Instantiate a new enum with the provided [value].
  const PhenomenaGroup._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = PhenomenaGroup._(r'None');
  static const rainfall = PhenomenaGroup._(r'Rainfall');
  static const snow = PhenomenaGroup._(r'Snow');
  static const hail = PhenomenaGroup._(r'Hail');
  static const thunderstorm = PhenomenaGroup._(r'Thunderstorm');
  static const atmosphericObscurant = PhenomenaGroup._(r'AtmosphericObscurant');
  static const severeWeather = PhenomenaGroup._(r'SevereWeather');

  /// List of all possible values in this [enum][PhenomenaGroup].
  static const values = <PhenomenaGroup>[
    none,
    rainfall,
    snow,
    hail,
    thunderstorm,
    atmosphericObscurant,
    severeWeather,
  ];

  static PhenomenaGroup? fromJson(dynamic value) =>
      PhenomenaGroupTypeTransformer().decode(value);

  static List<PhenomenaGroup> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PhenomenaGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhenomenaGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhenomenaGroup] to String,
/// and [decode] dynamic data back to [PhenomenaGroup].
class PhenomenaGroupTypeTransformer {
  factory PhenomenaGroupTypeTransformer() =>
      _instance ??= const PhenomenaGroupTypeTransformer._();

  const PhenomenaGroupTypeTransformer._();

  String encode(PhenomenaGroup data) => data.value;

  /// Decodes a [dynamic value][data] to a PhenomenaGroup.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhenomenaGroup? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'None':
          return PhenomenaGroup.none;
        case r'Rainfall':
          return PhenomenaGroup.rainfall;
        case r'Snow':
          return PhenomenaGroup.snow;
        case r'Hail':
          return PhenomenaGroup.hail;
        case r'Thunderstorm':
          return PhenomenaGroup.thunderstorm;
        case r'AtmosphericObscurant':
          return PhenomenaGroup.atmosphericObscurant;
        case r'SevereWeather':
          return PhenomenaGroup.severeWeather;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhenomenaGroupTypeTransformer] instance.
  static PhenomenaGroupTypeTransformer? _instance;
}
