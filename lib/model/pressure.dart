//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pressure {
  /// Returns a new [Pressure] instance.
  Pressure({
    required this.hPa,
    required this.inHg,
    required this.mmHg,
  });

  /// Pressure in hectopascals
  double hPa;

  /// Pressure in inches mercury
  double inHg;

  /// Pressure in millimeters mercury
  double mmHg;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pressure &&
          other.hPa == hPa &&
          other.inHg == inHg &&
          other.mmHg == mmHg;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hPa.hashCode) + (inHg.hashCode) + (mmHg.hashCode);

  @override
  String toString() => 'Pressure[hPa=$hPa, inHg=$inHg, mmHg=$mmHg]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'hPa'] = this.hPa;
    json[r'inHg'] = this.inHg;
    json[r'mmHg'] = this.mmHg;
    return json;
  }

  /// Returns a new [Pressure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pressure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Pressure[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Pressure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pressure(
        hPa: mapValueOfType<double>(json, r'hPa')!,
        inHg: mapValueOfType<double>(json, r'inHg')!,
        mmHg: mapValueOfType<double>(json, r'mmHg')!,
      );
    }
    return null;
  }

  static List<Pressure> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Pressure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pressure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pressure> mapFromJson(dynamic json) {
    final map = <String, Pressure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pressure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pressure-objects as value to a dart map
  static Map<String, List<Pressure>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Pressure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pressure.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hPa',
    'inHg',
    'mmHg',
  };
}
