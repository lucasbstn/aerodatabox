//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherStateContractPressure {
  /// Returns a new [WeatherStateContractPressure] instance.
  WeatherStateContractPressure({
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
      other is WeatherStateContractPressure &&
          other.hPa == hPa &&
          other.inHg == inHg &&
          other.mmHg == mmHg;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hPa.hashCode) + (inHg.hashCode) + (mmHg.hashCode);

  @override
  String toString() =>
      'WeatherStateContractPressure[hPa=$hPa, inHg=$inHg, mmHg=$mmHg]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'hPa'] = this.hPa;
    json[r'inHg'] = this.inHg;
    json[r'mmHg'] = this.mmHg;
    return json;
  }

  /// Returns a new [WeatherStateContractPressure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherStateContractPressure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WeatherStateContractPressure[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WeatherStateContractPressure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherStateContractPressure(
        hPa: mapValueOfType<double>(json, r'hPa')!,
        inHg: mapValueOfType<double>(json, r'inHg')!,
        mmHg: mapValueOfType<double>(json, r'mmHg')!,
      );
    }
    return null;
  }

  static List<WeatherStateContractPressure> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeatherStateContractPressure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherStateContractPressure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherStateContractPressure> mapFromJson(dynamic json) {
    final map = <String, WeatherStateContractPressure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherStateContractPressure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherStateContractPressure-objects as value to a dart map
  static Map<String, List<WeatherStateContractPressure>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WeatherStateContractPressure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherStateContractPressure.listFromJson(
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
