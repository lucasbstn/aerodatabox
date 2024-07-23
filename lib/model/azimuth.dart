//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Azimuth {
  /// Returns a new [Azimuth] instance.
  Azimuth({
    required this.deg,
    required this.rad,
  });

  /// Angle in degrees (between `0` and `360`)
  ///
  /// Minimum value: 0
  /// Maximum value: 360
  double deg;

  /// Angle in radians (`0` and `2 * Pi`)
  ///
  /// Minimum value: 0
  /// Maximum value: 6.283185307179586
  double rad;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Azimuth && other.deg == deg && other.rad == rad;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deg.hashCode) + (rad.hashCode);

  @override
  String toString() => 'Azimuth[deg=$deg, rad=$rad]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'deg'] = this.deg;
    json[r'rad'] = this.rad;
    return json;
  }

  /// Returns a new [Azimuth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Azimuth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Azimuth[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Azimuth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Azimuth(
        deg: mapValueOfType<double>(json, r'deg')!,
        rad: mapValueOfType<double>(json, r'rad')!,
      );
    }
    return null;
  }

  static List<Azimuth> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Azimuth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Azimuth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Azimuth> mapFromJson(dynamic json) {
    final map = <String, Azimuth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Azimuth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Azimuth-objects as value to a dart map
  static Map<String, List<Azimuth>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Azimuth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Azimuth.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deg',
    'rad',
  };
}
