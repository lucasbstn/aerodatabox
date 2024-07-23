//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherStateContractCloudBase {
  /// Returns a new [WeatherStateContractCloudBase] instance.
  WeatherStateContractCloudBase({
    required this.meter,
    required this.km,
    required this.mile,
    required this.nm,
    required this.feet,
  });

  /// Distance in meters
  double meter;

  /// Distance in kilometers
  double km;

  /// Distance in statute miles
  double mile;

  /// Distance in nautical miles
  double nm;

  /// Distance in feet
  double feet;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherStateContractCloudBase &&
          other.meter == meter &&
          other.km == km &&
          other.mile == mile &&
          other.nm == nm &&
          other.feet == feet;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (meter.hashCode) +
      (km.hashCode) +
      (mile.hashCode) +
      (nm.hashCode) +
      (feet.hashCode);

  @override
  String toString() =>
      'WeatherStateContractCloudBase[meter=$meter, km=$km, mile=$mile, nm=$nm, feet=$feet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'meter'] = this.meter;
    json[r'km'] = this.km;
    json[r'mile'] = this.mile;
    json[r'nm'] = this.nm;
    json[r'feet'] = this.feet;
    return json;
  }

  /// Returns a new [WeatherStateContractCloudBase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherStateContractCloudBase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WeatherStateContractCloudBase[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WeatherStateContractCloudBase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherStateContractCloudBase(
        meter: mapValueOfType<double>(json, r'meter')!,
        km: mapValueOfType<double>(json, r'km')!,
        mile: mapValueOfType<double>(json, r'mile')!,
        nm: mapValueOfType<double>(json, r'nm')!,
        feet: mapValueOfType<double>(json, r'feet')!,
      );
    }
    return null;
  }

  static List<WeatherStateContractCloudBase> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeatherStateContractCloudBase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherStateContractCloudBase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherStateContractCloudBase> mapFromJson(dynamic json) {
    final map = <String, WeatherStateContractCloudBase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherStateContractCloudBase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherStateContractCloudBase-objects as value to a dart map
  static Map<String, List<WeatherStateContractCloudBase>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WeatherStateContractCloudBase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherStateContractCloudBase.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meter',
    'km',
    'mile',
    'nm',
    'feet',
  };
}