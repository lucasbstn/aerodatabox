//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Speed {
  /// Returns a new [Speed] instance.
  Speed({
    required this.kt,
    required this.kmPerHour,
    required this.miPerHour,
    required this.meterPerSecond,
  });

  /// Speed in knots
  double kt;

  /// Speed in km per hour
  double kmPerHour;

  /// Speed in miles per hour
  double miPerHour;

  /// Speed in meters per second
  double meterPerSecond;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Speed &&
          other.kt == kt &&
          other.kmPerHour == kmPerHour &&
          other.miPerHour == miPerHour &&
          other.meterPerSecond == meterPerSecond;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (kt.hashCode) +
      (kmPerHour.hashCode) +
      (miPerHour.hashCode) +
      (meterPerSecond.hashCode);

  @override
  String toString() =>
      'Speed[kt=$kt, kmPerHour=$kmPerHour, miPerHour=$miPerHour, meterPerSecond=$meterPerSecond]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'kt'] = this.kt;
    json[r'kmPerHour'] = this.kmPerHour;
    json[r'miPerHour'] = this.miPerHour;
    json[r'meterPerSecond'] = this.meterPerSecond;
    return json;
  }

  /// Returns a new [Speed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Speed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Speed[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Speed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Speed(
        kt: mapValueOfType<double>(json, r'kt')!,
        kmPerHour: mapValueOfType<double>(json, r'kmPerHour')!,
        miPerHour: mapValueOfType<double>(json, r'miPerHour')!,
        meterPerSecond: mapValueOfType<double>(json, r'meterPerSecond')!,
      );
    }
    return null;
  }

  static List<Speed> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Speed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Speed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Speed> mapFromJson(dynamic json) {
    final map = <String, Speed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Speed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Speed-objects as value to a dart map
  static Map<String, List<Speed>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Speed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Speed.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kt',
    'kmPerHour',
    'miPerHour',
    'meterPerSecond',
  };
}
