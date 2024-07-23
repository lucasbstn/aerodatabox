//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Angle {
  /// Returns a new [Angle] instance.
  Angle({
    required this.deg,
    required this.rad,
  });

  /// Angle in degrees (between `-180` and `180`)
  ///
  /// Minimum value: -180
  /// Maximum value: 180
  double deg;

  /// Angle in radians (between `-Pi` and `Pi`)
  ///
  /// Minimum value: -3.141592653589793
  /// Maximum value: 3.141592653589793
  double rad;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Angle && other.deg == deg && other.rad == rad;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deg.hashCode) + (rad.hashCode);

  @override
  String toString() => 'Angle[deg=$deg, rad=$rad]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'deg'] = this.deg;
    json[r'rad'] = this.rad;
    return json;
  }

  /// Returns a new [Angle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Angle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Angle[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Angle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Angle(
        deg: mapValueOfType<double>(json, r'deg')!,
        rad: mapValueOfType<double>(json, r'rad')!,
      );
    }
    return null;
  }

  static List<Angle> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Angle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Angle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Angle> mapFromJson(dynamic json) {
    final map = <String, Angle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Angle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Angle-objects as value to a dart map
  static Map<String, List<Angle>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Angle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Angle.listFromJson(
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
