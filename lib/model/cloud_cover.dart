//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - Unknown</b></li> <li><b>1 - Clear</b></li> <li><b>2 - Few</b></li> <li><b>3 - Broken</b></li> <li><b>4 - Overcast</b></li> </ul>
class CloudCover {
  /// Instantiate a new enum with the provided [value].
  const CloudCover._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = CloudCover._(r'Unknown');
  static const clear = CloudCover._(r'Clear');
  static const few = CloudCover._(r'Few');
  static const broken = CloudCover._(r'Broken');
  static const overcast = CloudCover._(r'Overcast');

  /// List of all possible values in this [enum][CloudCover].
  static const values = <CloudCover>[
    unknown,
    clear,
    few,
    broken,
    overcast,
  ];

  static CloudCover? fromJson(dynamic value) =>
      CloudCoverTypeTransformer().decode(value);

  static List<CloudCover> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CloudCover>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CloudCover.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CloudCover] to String,
/// and [decode] dynamic data back to [CloudCover].
class CloudCoverTypeTransformer {
  factory CloudCoverTypeTransformer() =>
      _instance ??= const CloudCoverTypeTransformer._();

  const CloudCoverTypeTransformer._();

  String encode(CloudCover data) => data.value;

  /// Decodes a [dynamic value][data] to a CloudCover.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CloudCover? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown':
          return CloudCover.unknown;
        case r'Clear':
          return CloudCover.clear;
        case r'Few':
          return CloudCover.few;
        case r'Broken':
          return CloudCover.broken;
        case r'Overcast':
          return CloudCover.overcast;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CloudCoverTypeTransformer] instance.
  static CloudCoverTypeTransformer? _instance;
}
