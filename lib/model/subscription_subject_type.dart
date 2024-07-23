//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - FlightByNumber</b></li> <li><b>1 - FlightByAirportIcao</b></li> </ul>
class SubscriptionSubjectType {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionSubjectType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const flightByNumber = SubscriptionSubjectType._(r'FlightByNumber');
  static const flightByAirportIcao =
      SubscriptionSubjectType._(r'FlightByAirportIcao');

  /// List of all possible values in this [enum][SubscriptionSubjectType].
  static const values = <SubscriptionSubjectType>[
    flightByNumber,
    flightByAirportIcao,
  ];

  static SubscriptionSubjectType? fromJson(dynamic value) =>
      SubscriptionSubjectTypeTypeTransformer().decode(value);

  static List<SubscriptionSubjectType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SubscriptionSubjectType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionSubjectType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionSubjectType] to String,
/// and [decode] dynamic data back to [SubscriptionSubjectType].
class SubscriptionSubjectTypeTypeTransformer {
  factory SubscriptionSubjectTypeTypeTransformer() =>
      _instance ??= const SubscriptionSubjectTypeTypeTransformer._();

  const SubscriptionSubjectTypeTypeTransformer._();

  String encode(SubscriptionSubjectType data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionSubjectType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionSubjectType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FlightByNumber':
          return SubscriptionSubjectType.flightByNumber;
        case r'FlightByAirportIcao':
          return SubscriptionSubjectType.flightByAirportIcao;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionSubjectTypeTypeTransformer] instance.
  static SubscriptionSubjectTypeTypeTransformer? _instance;
}
