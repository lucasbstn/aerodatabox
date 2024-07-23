//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Descriptor of feed service status<p>Possible values:</p> <ul> <li><b>0 - Down</b>: Service is provided, but is currently down</li> <li><b>1 - Degraded</b>: Service is up and running, but performance is degraded: delays and disruptions are likely</li> <li><b>2 - OKPartial</b>: Service is up and running normally, but updates vailable for not all or only few flights</li> <li><b>3 - OK</b>: Service is up and running normally</li> <li><b>-2 - Unknown</b>: Status of service is unknown</li> <li><b>-1 - Unavailable</b>: Service is not provided</li> </ul>
class FeedServiceStatus {
  /// Instantiate a new enum with the provided [value].
  const FeedServiceStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const down = FeedServiceStatus._(r'Down');
  static const degraded = FeedServiceStatus._(r'Degraded');
  static const oKPartial = FeedServiceStatus._(r'OKPartial');
  static const OK = FeedServiceStatus._(r'OK');
  static const unknown = FeedServiceStatus._(r'Unknown');
  static const unavailable = FeedServiceStatus._(r'Unavailable');

  /// List of all possible values in this [enum][FeedServiceStatus].
  static const values = <FeedServiceStatus>[
    down,
    degraded,
    oKPartial,
    OK,
    unknown,
    unavailable,
  ];

  static FeedServiceStatus? fromJson(dynamic value) =>
      FeedServiceStatusTypeTransformer().decode(value);

  static List<FeedServiceStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FeedServiceStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeedServiceStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FeedServiceStatus] to String,
/// and [decode] dynamic data back to [FeedServiceStatus].
class FeedServiceStatusTypeTransformer {
  factory FeedServiceStatusTypeTransformer() =>
      _instance ??= const FeedServiceStatusTypeTransformer._();

  const FeedServiceStatusTypeTransformer._();

  String encode(FeedServiceStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a FeedServiceStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedServiceStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Down':
          return FeedServiceStatus.down;
        case r'Degraded':
          return FeedServiceStatus.degraded;
        case r'OKPartial':
          return FeedServiceStatus.oKPartial;
        case r'OK':
          return FeedServiceStatus.OK;
        case r'Unknown':
          return FeedServiceStatus.unknown;
        case r'Unavailable':
          return FeedServiceStatus.unavailable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FeedServiceStatusTypeTransformer] instance.
  static FeedServiceStatusTypeTransformer? _instance;
}
