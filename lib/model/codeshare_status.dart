//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Flight code-share status<p>Possible values:</p> <ul> <li><b>0 - Unknown</b>: Code-sharing information is unavailable for this flight. Flight might be operated both by airline owning the flight number as well as by another airliner.</li> <li><b>1 - IsOperator</b>: Flight is operated by an airline owning the flight number (the same code)</li> <li><b>2 - IsCodeshared</b>: Flight is code-shared (operated by an airline other than airline owning the flight number)</li> </ul>
class CodeshareStatus {
  /// Instantiate a new enum with the provided [value].
  const CodeshareStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = CodeshareStatus._(r'Unknown');
  static const isOperator = CodeshareStatus._(r'IsOperator');
  static const isCodeshared = CodeshareStatus._(r'IsCodeshared');

  /// List of all possible values in this [enum][CodeshareStatus].
  static const values = <CodeshareStatus>[
    unknown,
    isOperator,
    isCodeshared,
  ];

  static CodeshareStatus? fromJson(dynamic value) =>
      CodeshareStatusTypeTransformer().decode(value);

  static List<CodeshareStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CodeshareStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeshareStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CodeshareStatus] to String,
/// and [decode] dynamic data back to [CodeshareStatus].
class CodeshareStatusTypeTransformer {
  factory CodeshareStatusTypeTransformer() =>
      _instance ??= const CodeshareStatusTypeTransformer._();

  const CodeshareStatusTypeTransformer._();

  String encode(CodeshareStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeshareStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeshareStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown':
          return CodeshareStatus.unknown;
        case r'IsOperator':
          return CodeshareStatus.isOperator;
        case r'IsCodeshared':
          return CodeshareStatus.isCodeshared;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeshareStatusTypeTransformer] instance.
  static CodeshareStatusTypeTransformer? _instance;
}
