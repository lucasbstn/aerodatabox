//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherStateContractAirTemperature {
  /// Returns a new [WeatherStateContractAirTemperature] instance.
  WeatherStateContractAirTemperature({
    required this.c,
    required this.f,
    required this.k,
  });

  /// Temperature in degrees Celcius
  double c;

  /// Distance in degrees Fahrenheit
  double f;

  /// Temperature in degrees Kelvin
  double k;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherStateContractAirTemperature &&
          other.c == c &&
          other.f == f &&
          other.k == k;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (c.hashCode) + (f.hashCode) + (k.hashCode);

  @override
  String toString() => 'WeatherStateContractAirTemperature[c=$c, f=$f, k=$k]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'c'] = this.c;
    json[r'f'] = this.f;
    json[r'k'] = this.k;
    return json;
  }

  /// Returns a new [WeatherStateContractAirTemperature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherStateContractAirTemperature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WeatherStateContractAirTemperature[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WeatherStateContractAirTemperature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherStateContractAirTemperature(
        c: mapValueOfType<double>(json, r'c')!,
        f: mapValueOfType<double>(json, r'f')!,
        k: mapValueOfType<double>(json, r'k')!,
      );
    }
    return null;
  }

  static List<WeatherStateContractAirTemperature> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeatherStateContractAirTemperature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherStateContractAirTemperature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherStateContractAirTemperature> mapFromJson(
      dynamic json) {
    final map = <String, WeatherStateContractAirTemperature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherStateContractAirTemperature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherStateContractAirTemperature-objects as value to a dart map
  static Map<String, List<WeatherStateContractAirTemperature>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WeatherStateContractAirTemperature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherStateContractAirTemperature.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'c',
    'f',
    'k',
  };
}
