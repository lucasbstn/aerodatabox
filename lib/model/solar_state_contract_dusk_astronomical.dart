//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SolarStateContractDuskAstronomical {
  /// Returns a new [SolarStateContractDuskAstronomical] instance.
  SolarStateContractDuskAstronomical({
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
      other is SolarStateContractDuskAstronomical &&
          other.utc == utc &&
          other.local == local;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (utc.hashCode) + (local.hashCode);

  @override
  String toString() =>
      'SolarStateContractDuskAstronomical[utc=$utc, local=$local]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'utc'] = this.utc.toUtc().toIso8601String();
    json[r'local'] = this.local.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SolarStateContractDuskAstronomical] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SolarStateContractDuskAstronomical? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SolarStateContractDuskAstronomical[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SolarStateContractDuskAstronomical[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SolarStateContractDuskAstronomical(
        utc: mapDateTime(json, r'utc', r'')!,
        local: mapDateTime(json, r'local', r'')!,
      );
    }
    return null;
  }

  static List<SolarStateContractDuskAstronomical> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SolarStateContractDuskAstronomical>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SolarStateContractDuskAstronomical.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SolarStateContractDuskAstronomical> mapFromJson(
      dynamic json) {
    final map = <String, SolarStateContractDuskAstronomical>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SolarStateContractDuskAstronomical.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SolarStateContractDuskAstronomical-objects as value to a dart map
  static Map<String, List<SolarStateContractDuskAstronomical>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SolarStateContractDuskAstronomical>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SolarStateContractDuskAstronomical.listFromJson(
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