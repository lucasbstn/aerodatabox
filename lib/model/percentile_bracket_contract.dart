//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PercentileBracketContract {
  /// Returns a new [PercentileBracketContract] instance.
  PercentileBracketContract({
    required this.percentile,
    required this.delay,
  });

  /// Percentile of the distribution
  ///
  /// Minimum value: 5
  /// Maximum value: 95
  int percentile;

  /// Delay of the flight for the specific percentile (format: [-]hh:mm:ss).
  String delay;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PercentileBracketContract &&
          other.percentile == percentile &&
          other.delay == delay;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (percentile.hashCode) + (delay.hashCode);

  @override
  String toString() =>
      'PercentileBracketContract[percentile=$percentile, delay=$delay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'percentile'] = this.percentile;
    json[r'delay'] = this.delay;
    return json;
  }

  /// Returns a new [PercentileBracketContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PercentileBracketContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PercentileBracketContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PercentileBracketContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PercentileBracketContract(
        percentile: mapValueOfType<int>(json, r'percentile')!,
        delay: mapValueOfType<String>(json, r'delay')!,
      );
    }
    return null;
  }

  static List<PercentileBracketContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PercentileBracketContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PercentileBracketContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PercentileBracketContract> mapFromJson(dynamic json) {
    final map = <String, PercentileBracketContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PercentileBracketContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PercentileBracketContract-objects as value to a dart map
  static Map<String, List<PercentileBracketContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PercentileBracketContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PercentileBracketContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'percentile',
    'delay',
  };
}
