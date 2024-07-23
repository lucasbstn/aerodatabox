//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Models of calculating the flight time.<p>Possible values:</p> <ul> <li><b>0 - Standard</b>: Standard model of calculation which takes into account the great circle distance and the average speed of all aircraft typically operating on those distances.</li> <li><b>1 - ML01</b>: Experimental machine learning (ML) model, which attempts to provide more accurate prediction of the flight time by taking into account the history of flights on specified route and aircraft type within the recent year. This may come in handy in case when on certain routes flights take significant detours due to extended airspace closures dictated by war conflicts, sanction regulations, etc. This can result in significantly increased flight times comparing to regular estimations. Or, some routes generally experience longer delays than other routes of the same distance. This model attempts to take such factors into account and reflect it in the prediction. If a model cannot be applied due to lack of historical and/or aircraft data or prediction is too off set, it automatically fallbacks to `Standard`.</li> </ul>
class ModelFlightTimeEnum {
  /// Instantiate a new enum with the provided [value].
  const ModelFlightTimeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const standard = ModelFlightTimeEnum._(r'Standard');
  static const mL01 = ModelFlightTimeEnum._(r'ML01');

  /// List of all possible values in this [enum][ModelFlightTimeEnum].
  static const values = <ModelFlightTimeEnum>[
    standard,
    mL01,
  ];

  static ModelFlightTimeEnum? fromJson(dynamic value) =>
      ModelFlightTimeEnumTypeTransformer().decode(value);

  static List<ModelFlightTimeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModelFlightTimeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelFlightTimeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelFlightTimeEnum] to String,
/// and [decode] dynamic data back to [ModelFlightTimeEnum].
class ModelFlightTimeEnumTypeTransformer {
  factory ModelFlightTimeEnumTypeTransformer() =>
      _instance ??= const ModelFlightTimeEnumTypeTransformer._();

  const ModelFlightTimeEnumTypeTransformer._();

  String encode(ModelFlightTimeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelFlightTimeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelFlightTimeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Standard':
          return ModelFlightTimeEnum.standard;
        case r'ML01':
          return ModelFlightTimeEnum.mL01;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelFlightTimeEnumTypeTransformer] instance.
  static ModelFlightTimeEnumTypeTransformer? _instance;
}
