//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DateTimeContract {
  /// Returns a new [DateTimeContract] instance.
  DateTimeContract({
    required this.utc,
    required this.local,
  });

  /// UTC-time
  DateTime utc;

  /// Local time
  DateTime local;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DateTimeContract && other.utc == utc && other.local == local;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (utc.hashCode) + (local.hashCode);

  @override
  String toString() => 'DateTimeContract[utc=$utc, local=$local]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'utc'] = this.utc.toUtc().toIso8601String();
    json[r'local'] = this.local.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DateTimeContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DateTimeContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DateTimeContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DateTimeContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DateTimeContract(
        utc: mapDateTime(json, r'utc', r'')!,
        local: mapDateTime(json, r'local', r'')!,
      );
    }
    return null;
  }

  static List<DateTimeContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DateTimeContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateTimeContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DateTimeContract> mapFromJson(dynamic json) {
    final map = <String, DateTimeContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DateTimeContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DateTimeContract-objects as value to a dart map
  static Map<String, List<DateTimeContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DateTimeContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DateTimeContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'utc',
    'local',
  };
}
