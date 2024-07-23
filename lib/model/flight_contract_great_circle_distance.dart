//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightContractGreatCircleDistance {
  /// Returns a new [FlightContractGreatCircleDistance] instance.
  FlightContractGreatCircleDistance({
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
      other is FlightContractGreatCircleDistance &&
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
      'FlightContractGreatCircleDistance[meter=$meter, km=$km, mile=$mile, nm=$nm, feet=$feet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'meter'] = this.meter;
    json[r'km'] = this.km;
    json[r'mile'] = this.mile;
    json[r'nm'] = this.nm;
    json[r'feet'] = this.feet;
    return json;
  }

  /// Returns a new [FlightContractGreatCircleDistance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightContractGreatCircleDistance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightContractGreatCircleDistance[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightContractGreatCircleDistance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightContractGreatCircleDistance(
        meter: mapValueOfType<double>(json, r'meter')!,
        km: mapValueOfType<double>(json, r'km')!,
        mile: mapValueOfType<double>(json, r'mile')!,
        nm: mapValueOfType<double>(json, r'nm')!,
        feet: mapValueOfType<double>(json, r'feet')!,
      );
    }
    return null;
  }

  static List<FlightContractGreatCircleDistance> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightContractGreatCircleDistance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightContractGreatCircleDistance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightContractGreatCircleDistance> mapFromJson(
      dynamic json) {
    final map = <String, FlightContractGreatCircleDistance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightContractGreatCircleDistance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightContractGreatCircleDistance-objects as value to a dart map
  static Map<String, List<FlightContractGreatCircleDistance>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightContractGreatCircleDistance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightContractGreatCircleDistance.listFromJson(
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
